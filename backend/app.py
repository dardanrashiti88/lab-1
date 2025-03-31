from flask import Flask, jsonify
import mysql.connector
import os
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

app = Flask(__name__)

def get_db_connection():
    try:
        conn = mysql.connector.connect(
            host=os.getenv("DB_HOST", "db"),  # Use the service name from docker-compose
            user=os.getenv("DB_USER", "root"),
            password=os.getenv("DB_PASSWORD", "password"),
            database=os.getenv("DB_NAME", "my_database")
        )
        return conn
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return None

@app.route('/')
def home():
    return jsonify({"message": "Welcome to DevOps Lab API"})

@app.route('/players')
def get_players():
    conn = get_db_connection()
    if conn is None:
        return jsonify({"error": "Unable to connect to the database"}), 500
    
    try:
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM players")
        players = cursor.fetchall()
        cursor.close()
        conn.close()
        return jsonify(players)
    except mysql.connector.Error as err:
        return jsonify({"error": f"Database query error: {err}"}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
