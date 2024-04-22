from typing import Any, Tuple, List
import sqlite3
from models.model_dataclasses import Country


class Countries:
    def __init__(self):
        self.db_path = "db/database.sqlite"
        self.connection: sqlite3.Connection
        self.cursor: sqlite3.Cursor

    def __enter__(self):
        self.connection = sqlite3.connect(self.db_path)
        self.cursor = self.connection.cursor()
        return self

    def __exit__(self, exc_type, exc_value, exc_traceback):
        self.cursor.close()
        self.connection.close()

    def execute_query(self, query: str, parameters: Tuple[Any, ...] = ()) -> List[Tuple[Any, ...]]:
        """Execute a query and fetch the results

        Parameters
        ----------
        query : str
            SQL query to execute

        Returns
        -------
        List[Tuple[Any, ...]]
            A list of rows in the table

        Raises
        ------
        sqlite3.Error
        """

        try:
            with self:
                self.cursor.execute(query, parameters)
                result = self.cursor.fetchall()
        except sqlite3.Error as e:
            print(f"Some error during query execution occurred: {e}")
            raise e

        return result

    def get_all(self) -> List[Tuple[Any, ...]]:
        """Read all records from the table

        Returns
        -------
        List[Tuple[Any, ...]]
            A list of rows in the table
        """

        query = "SELECT * FROM countries"
        return self.execute_query(query)

    def get_by_id(self, record_id: int) -> List[Tuple[Any, ...]]:
        """Read a single record by its ID

        Parameters
        ----------
        record_id : int
            ID of the record

        Returns
        -------
        List[Tuple[Any, ...]]
            A list of rows in the table
        """

        query = "SELECT * FROM countries WHERE id = ?"
        return self.execute_query(query, (record_id,))

    def insert(self, record: Country) -> bool:
        """Create a new record in the table

        Parameters
        ----------
        record : Country
            A table record

        Returns
        -------
        bool
            Whether the query is successful
        """

        values = record.get_data()[1:]  # index 0 is ID
        columns = record.get_columns()[1:]
        readable_columns = ", ".join(columns)
        query = f"INSERT INTO countries ({readable_columns}) VALUES ?"

        try:
            self.execute_query(query, (values,))
        except sqlite3.Error:
            return False

        self.connection.commit()
        return True

    def update(self, record: Country) -> bool:
        """Update an existing record in the table

        Parameters
        ----------
        record : _type_
            A table record

        Returns
        -------
        bool
            Whether the query is successful
        """

        query = """UPDATE countries SET \
            name = ?,
            capital = ?
            region = ?
            population = ?
            area = ?
            phone_code = ?
            country_code = ?
            currency = ?
            WHERE country_id = ?"""
        
        record_id = record.country_id
        values = record.get_data()[1:]
        
        self.execute_query(query, (values, record_id))
        
        return bool(self.cursor.rowcount)

    def remove(self, record_id: int) -> bool:
        """Delete a record from the table by its ID

        Parameters
        ----------
        record_id : int
            ID of the record

        Returns
        -------
        bool
            Whether the query is successful
        """

        query = "DELETE FROM countries WHERE country_id = ?"
        self.execute_query(query, (record_id,))
        return bool(self.cursor.rowcount)
