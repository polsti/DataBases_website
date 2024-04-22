from flask import Flask, render_template
from models.countries import Countries

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/countries")
def countries():
    countries = Countries()
    rows = countries.get_all()
    return render_template("countries.html", rows=rows)


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)
