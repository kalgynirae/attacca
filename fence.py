from flask import Flask
app = Flask(__name__)

@app.route("/arrive")
def arrive():
    print("Arrived!")

@app.route("/depart")
def arrive():
    print("Departed!")

if __name__ == "__main__":
    app.run()
