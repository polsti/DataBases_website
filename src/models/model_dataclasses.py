from dataclasses import dataclass, fields
from datetime import date
from typing import Tuple, Any


@dataclass
class Country:
    """Represents a country."""

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
        """Get all columns in order

        Returns
        -------
        Tuple[str, ...]
            A tuple of all table columns in order
        """
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        """Get object (record) data in order

        Returns
        -------
        Tuple[Any, ...]
            A tuple of record data in order
        """
        return tuple(getattr(self, column.name) for column in fields(self))

# new class 
@dataclass
class Test:
    """Represents a country."""

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
        """Get all columns in order

        Returns
        -------
        Tuple[str, ...]
            A tuple of all table columns in order
        """
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        """Get object (record) data in order

        Returns
        -------
        Tuple[Any, ...]
            A tuple of record data in order
        """
        return tuple(getattr(self, column.name) for column in fields(self))
    
    # add validation functions
    # example 
    # if self.capital contains number => error



# class for a single TV Show
@dataclass
class TV_Show:
    """Represents a country."""

# here should be properties for a specific table 
# for TV Shows - some id, name, descriptio and bla bla bla
# if something is null
# if integer is nullable no change
# if string  -  name: str | None # nullable
    id: int
    id_user: int # fk_Userid_User
    title: str
    description : str
    release_date: int # date

# no changes here
    def get_columns(self) -> Tuple[str, ...]:
        """Get all columns in order

        Returns
        -------
        Tuple[str, ...]
            A tuple of all table columns in order
        """
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        """Get object (record) data in order

        Returns
        -------
        Tuple[Any, ...]
            A tuple of record data in order
        """
        return tuple(getattr(self, column.name) for column in fields(self))
    


# class for a single season
@dataclass
class Season:
    """Represents a country."""

# here should be properties for a specific table 
# for TV Shows - some id, name, descriptio and bla bla bla
# if something is null
# if integer is nullable no change
# if string  -  name: str | None # nullable
    id: int
    tv_show_id : int # fk_TV_Showid_TV_Show
    title: str
    description: str
    release_date: int # date

# no changes here
    def get_columns(self) -> Tuple[str, ...]:
        """Get all columns in order

        Returns
        -------
        Tuple[str, ...]
            A tuple of all table columns in order
        """
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        """Get object (record) data in order

        Returns
        -------
        Tuple[Any, ...]
            A tuple of record data in order
        """
        return tuple(getattr(self, column.name) for column in fields(self))
    
# class for a single episode
@dataclass
class Episode:
    """Represents a country."""

# here should be properties for a specific table 
# for TV Shows - some id, name, descriptio and bla bla bla
# if something is null
# if integer is nullable no change
# if string  -  name: str | None # nullable
    id: int
    title: str
    description: str
    episode_number : int
    duration : float
    id_language : int # fk_Languageid_Language

# no changes here
    def get_columns(self) -> Tuple[str, ...]:
        """Get all columns in order

        Returns
        -------
        Tuple[str, ...]
            A tuple of all table columns in order
        """
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        """Get object (record) data in order

        Returns
        -------
        Tuple[Any, ...]
            A tuple of record data in order
        """
        return tuple(getattr(self, column.name) for column in fields(self))

                
# class for a single language 
@dataclass
class Language:
    """Represents a country."""

# here should be properties for a specific table 
# for TV Shows - some id, name, descriptio and bla bla bla
# if something is null
# if integer is nullable no change
# if string  -  name: str | None # nullable
    id: int
    name: str

# no changes here
    def get_columns(self) -> Tuple[str, ...]:
        """Get all columns in order

        Returns
        -------
        Tuple[str, ...]
            A tuple of all table columns in order
        """
        return tuple(column.name for column in fields(self))

    def get_data(self) -> Tuple[Any, ...]:
        """Get object (record) data in order

        Returns
        -------
        Tuple[Any, ...]
            A tuple of record data in order
        """
        return tuple(getattr(self, column.name) for column in fields(self))
