from flask import Flask, render_template, request, redirect
from pydantic import ValidationError
from models.tv_shows import TV_Shows
from models.seasons import Seasons
from models.episodes import Episodes
from models.languages import Languages
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

@app.route("/Episodes/insert")
def insert_episode_form():
    all_tv_shows = TV_Shows().get_all()
    all_languages = Languages().get_all()
    return render_template("insertion.html", episode=None, season=None, languages=all_languages, tv_shows=all_tv_shows)

  # A = Countries
  # B = Performers
  # C = Songs 
  # D = Events
  
@app.route("/Episodes/insert", methods=["GET", "POST"])
def insert_episode_action():
    inputs = request.form.to_dict()
    
    seasons = Seasons()
    episodes = Episodes()
    
    try:
        id_season = seasons.get_all()[-1].id_season + 1  # get last performer's ID
        episode = Episodes(id_season = id_season, **inputs)
        season = Seasons(**inputs)

    except ValidationError:
        all_tv_shows = TV_Shows().get_all()
        all_languages = Languages().get_all()
        return render_template("insertion.html", episode=None, season=None, languages=all_languages, tv_shows=all_tv_shows, validation_error=True)

    seasons.insert(season)
    episodes.insert(episode)

    return redirect("\Episodes")
  
if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)
