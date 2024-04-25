from flask import Flask, render_template, request
from models.tv_shows import TV_Shows
from models.seasons import Seasons
from models.episodes import Episodes
from models.languages import Languages
from flask import redirect
from datetime import date

app = Flask(__name__)
# Home page
@app.route("/")
def index():
    return render_template("index.html")


# TV Shows
@app.route("/tv_shows")
def tv_shows():
    tv_shows = TV_Shows()
    rows = tv_shows.get_all()
    return render_template("tv_show.html", rows=rows)



# Seasons
@app.route("/seasons")
def seasons():
    seasons = Seasons()
    rows = seasons.get_all()
    # adding code here for tv show reference
    
    return render_template("seasons.html", rows=rows)

# Episodes
@app.route("/episodes")
def episodes():
    episodes = Episodes()
    rows = episodes.get_all()
    return render_template("episodes.html", rows=rows)

# Language
@app.route("/languages")
def languages():
    languages = Languages()
    rows = languages.get_all()
    return render_template("languages.html", rows=rows)

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)
