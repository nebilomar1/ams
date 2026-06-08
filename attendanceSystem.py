import cv2
import os
import numpy as np
import face_recognition
import datetime
from connection import MySqlConnection
from flask import Flask, render_template, request

app = Flask(__name__)

# Load known faces and their names
known_faces = []
known_names = []

today = datetime.date.today().strftime("%d_%m_%Y")

conn = MySqlConnection()

def get_known_encodings():
    global known_faces, known_names
    known_faces = []
    known_names = []

    for filename in os.listdir('static/faces'):
        image = face_recognition.load_image_file(os.path.join('static/faces', filename))
        encoding = face_recognition.face_encodings(image)[0]
        known_faces.append(encoding)
        known_names.append(os.path.splitext(filename)[0])

def totalreg():
    return len(os.listdir('static/faces/'))

def extract_attendance():
    results = conn.read(f"SELECT * FROM {today}")
    return results


def mark_attendance(person):
    name = person.split('_')[0]
    roll_no = person.split('_')[1]  # Store roll_no as a string
    current_time = datetime.datetime.now().strftime('%H:%M:%S')

    exists = conn.read(f"SELECT * FROM {today} where roll_no = {roll_no}")
    if len(exists) == 0:
        try:
            conn.insert(f"INSERT INTO {today} VALUES (%s, %s, %s)", (name, roll_no, current_time,))
        except Exception as e:
            print(e)


def identify_person():
    video_capture = cv2.VideoCapture(0)
    attendance_marked = False

    while True:
        ret, frame = video_capture.read()
        if not ret:
            print("Error: Failed to retrieve frame from camera.")
            break

        height, width, channels = frame.shape
        rgb_frame = np.zeros((height, width, channels), dtype=frame.dtype)

        for i in range(height):
            for j in range(width):
                rgb_frame[i, j] = frame[i, j, ::-1]

        face_locations = face_recognition.face_locations(rgb_frame)
        face_encodings = face_recognition.face_encodings(rgb_frame, face_locations)

        recognized_names = []

        for face_encoding in face_encodings:
            matches = face_recognition.compare_faces(known_faces, face_encoding)
            name = 'UnKnown'

            if True in matches:
                matched_indices = [i for i, match in enumerate(matches) if match]
                for index in matched_indices:
                    name = known_names[index]
                    recognized_names.append(name)

        if len(recognized_names) > 0:

            for name in recognized_names:
                mark_attendance(name)

            attendance_marked = True

        cv2.imshow('Camera', frame)

        if cv2.waitKey(1) & 0xFF == ord('q') or attendance_marked:
            break

    video_capture.release()
    cv2.destroyAllWindows()


@app.route('/')
def home():
    conn.create(f"CREATE TABLE IF NOT EXISTS {today} (name VARCHAR(100), roll_no VARCHAR(30), time VARCHAR(10))")
    userDetails = extract_attendance()
    get_known_encodings()
    return render_template('home.html', l=len(userDetails), today=today.replace("_", "-"), totalreg=totalreg(),
                           userDetails=userDetails)

@app.route('/video_feed', methods=['GET'])
def video_feed():
    identify_person()
    userDetails = extract_attendance()
    return render_template('home.html', l=len(userDetails), today=today.replace("_", "-"), totalreg=totalreg(),
                           userDetails=userDetails)

@app.route('/add_user', methods=['GET', 'POST'])
def add_user():
    name = request.form['newusername']
    roll_no = request.form['newrollno']
    userimagefolder = 'static/faces'
    if not os.path.isdir(userimagefolder):
        os.makedirs(userimagefolder)
    video_capture = cv2.VideoCapture(0)

    while True:
        ret, frame = video_capture.read()
        flipped_frame = cv2.flip(frame, 1)

        text = "Press Q to Capture & Save the Image"
        font = cv2.FONT_HERSHEY_COMPLEX
        font_scale = 0.9
        font_color = (0, 0, 200)
        thickness = 2

        text_size = cv2.getTextSize(text, font, font_scale, thickness)[0]
        text_x = (frame.shape[1] - text_size[0]) // 2
        text_y = frame.shape[0] - 450  # Corrected calculation for text_y

        cv2.putText(flipped_frame, text, (text_x, text_y), font, font_scale, font_color, thickness, cv2.LINE_AA)

        cv2.imshow('Camera', flipped_frame)

        if cv2.waitKey(1) & 0xFF == ord('q'):
            img_name = name + '_' + roll_no + '.jpg'
            cv2.imwrite(os.path.join(userimagefolder, img_name), flipped_frame)
            break

    video_capture.release()
    cv2.destroyAllWindows()

    userDetails = extract_attendance()
    get_known_encodings()
    return render_template('home.html', l=len(userDetails), today=today.replace("_", "-"), totalreg=totalreg(), userDetails=userDetails)

if __name__ == '__main__':
    app.run(debug=True)
