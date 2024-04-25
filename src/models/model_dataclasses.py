from pydantic import BaseModel, field_validator
from datetime import date
from typing import Tuple, Any



# class for a single TV Show

class TV_Show(BaseModel):
    """Represents a tv show."""

    id_TV_Show : int
    title: str
    description : str
    release_date: date 



# class for a single season

class Season(BaseModel):
    """Represents a season."""

    id_Season: int
    fk_TV_Showid_TV_Show : TV_Show # fk_TV_Showid_TV_Show # int
    title: str
    description: str
    release_date: date 
    
    @field_validator("release_date")
    @classmethod
    def check_date(value: date) -> date:
      if value < 0:
          raise ValueError("Date can't be negative")
      return value
    
    @field_validator("title", "description")
    @classmethod
    def validate_non_empty_string(cls, value):
        if not value or not value.strip():
          raise ValueError("This field cannot be empty or contain only whitespace.")
        return value
    

# class for a single language 

class Language(BaseModel):
    """Represents a language."""

    id_Language: int
    language_name: str

   

# class for a single episode

class Episode(BaseModel):
    """Represents an episode."""

    id_Episode: int
    title: str
    description: str
    episode_number : int
    duration : float
    fk_Languageid_Language : Language #int # fk_Languageid_Language
    fk_Seasonid_Season : Season #int

    @field_validator("id_Episode")
    @classmethod
    def check_non_negative_int(value):
      if value < 0:
          raise ValueError("This field must be a non-negative integer.")
      return value
    
    @field_validator("episode_number")
    @classmethod
    def check_non_negative_int(value):
      if value < 0:
          raise ValueError("This field must be a non-negative integer.")
      return value


