from dataclasses import dataclass, fields
from datetime import date
from typing import Tuple, Any


@dataclass
class Country:

    country_id: int
    name: str
    capital: str
    region: str
    population: int
    area: int
    phone_code: int
    country_code: str
    currency: str

    def get_columns(self) -> Tuple[str, ...]:
        
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        
        return tuple(getattr(self, column.name) for column in fields(self))


# new class 

@dataclass
class Test:

# here should be properties for a specific table 
# for TV Shows - some id, name, descriptio and bla bla bla
# if something is null
# if integer is nullable no change
# if string  -  name: str | None # nullable
    country_id: int
    name: str
    capital: str
    region: str
    population: int
    area: int
    phone_code: int
    country_code: str
    currency: str

# no changes here
    def get_columns(self) -> Tuple[str, ...]:
        
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        
        return tuple(getattr(self, column.name) for column in fields(self))
    
    # add validation functions
    # example 
    # if self.capital contains number => error



# class for a single TV Show
@dataclass
class TV_Show:
    """Represents a tv show."""

# here should be properties for a specific table 
# for TV Shows - some id, name, descriptio and bla bla bla
# if something is null
# if integer is nullable no change
# if string  -  name: str | None # nullable
    id_TV_Show : int
    title: str
    description : str
    release_date: str # date  # TODO

# no changes here
    def get_columns(self) -> Tuple[str, ...]:
        
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        
        return tuple(getattr(self, column.name) for column in fields(self))
    


# class for a single season
@dataclass
class Season:
    """Represents a season."""

    id_Season: int
    fk_TV_Showid_TV_Show : int # fk_TV_Showid_TV_Show
    title: str
    description: str
    release_date: str # date  # TODO

# no changes here
    def get_columns(self) -> Tuple[str, ...]:
        
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        
        return tuple(getattr(self, column.name) for column in fields(self))
    
# class for a single episode
@dataclass
class Episode:
    """Represents an episode."""

    id_Episode: int
    title: str
    description: str
    episode_number : int
    duration : float
    fk_Languageid_Language : int # fk_Languageid_Language
    fk_Seasonid_Season : int

# no changes here
    def get_columns(self) -> Tuple[str, ...]:
        
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        
        return tuple(getattr(self, column.name) for column in fields(self))

                
# class for a single language 
@dataclass
class Language:
    """Represents a language."""

# here should be properties for a specific table 
# for TV Shows - some id, name, descriptio and bla bla bla
# if something is null
# if integer is nullable no change
# if string  -  name: str | None # nullable
    id_Language: int
    language_name: str

# no changes here
    def get_columns(self) -> Tuple[str, ...]:
        
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        
        return tuple(getattr(self, column.name) for column in fields(self))
