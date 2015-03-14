from flask import Flask
app = Flask(__name__)
homeness = {}

@app.route("/<name>/arrive")
def arrive(name):
    homeness[name] = True
    return ""

@app.route("/<name>/depart")
def depart(name):
    homeness[name] = False
    return ""

@app.route("/<name>/ishome")
def ishome(name):
    return "%s\n" % homeness.get(name, False)

if __name__ == "__main__":
    app.run("0.0.0.0")
