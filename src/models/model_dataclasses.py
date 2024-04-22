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

