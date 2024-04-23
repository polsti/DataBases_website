from typing import Any, Tuple, List
import sqlite3
from models.model_dataclasses import Language


class Languages:
    def __init__(self):
        self.db_path = "db/tv.sqlite"
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
       
        try:
            with self:
                self.cursor.execute(query, parameters)
                result = self.cursor.fetchall()
        except sqlite3.Error as e:
            print(f"Some error during query execution occurred: {e}")
            raise e

        return result

    def get_all(self) -> List[Tuple[Any, ...]]:
        
# query = "SELECT * FROM countries"   SELECT FROM your database table
        query = "SELECT * FROM languages"
        return self.execute_query(query)

    def get_by_id(self, record_id: int) -> List[Tuple[Any, ...]]:
        

        query = "SELECT * FROM languages WHERE id = ?"
        return self.execute_query(query, (record_id,))

# record - type of country
    def insert(self, record: Language) -> bool:
        
        values = record.get_data()[1:]  # index 0 is ID
        columns = record.get_columns()[1:]
        readable_columns = ", ".join(columns)
        query = f"INSERT INTO languages ({readable_columns}) VALUES ?"

        try:
            self.execute_query(query, (values,))
        except sqlite3.Error:
            return False

        self.connection.commit()
        return True

    def update(self, record: Language) -> bool:
        
        record_id = record.language_id
        values = record.get_data()[1:]
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
        self.execute_query(query, (values, record_id))
        
        return bool(self.cursor.rowcount)

    def remove(self, record_id: int) -> bool:
        
        query = "DELETE FROM languages WHERE language_id = ?"
        self.execute_query(query, (record_id,))
        return bool(self.cursor.rowcount)
