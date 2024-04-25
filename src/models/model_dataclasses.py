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

    
    title: str
    description: str
    release_date: date 
    id_Season: int
    fk_TV_Showid_TV_Show : int # fk_TV_Showid_TV_Show # int
    
    
    # TODO
    # @field_validator("title", "description")
    # @classmethod
    # def validate_non_empty_string_seasons(cls, value):
    #     if not value or not value.strip():
    #       raise ValueError("This field cannot be empty or contain only whitespace.")
    #     return value
    

# class for a single language 

class Language(BaseModel):
    """Represents a language."""

    id_Language: int
    language_name: str

   

# class for a single episode

class Episode(BaseModel):
    """Represents an episode."""

    
    title: str
    description: str
    episode_number : int
    duration : float
    id_Episode: int
    fk_Languageid_Language : int #int # fk_Languageid_Language
    fk_Seasonid_Season : int #int


    @field_validator("title", "description")
    @classmethod
    def validate_non_empty_string_episode(cls, value):
        if not value or not value.strip():
          raise ValueError("This field cannot be empty or contain only whitespace.")
        return value
    
    @field_validator("episode_number")
    @classmethod
    def check_non_negative_int_num(cls, value):
      if value < 0:
          raise ValueError("This field must be a non-negative integer.")
      return value
    
    @field_validator("duration")
    @classmethod
    def check_non_negative_duration(cls, value):
      if value < 0:
          raise ValueError("This field must be a non-negative.")
      return value
    
    
    
    


