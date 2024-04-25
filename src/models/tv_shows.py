from typing import Any, Tuple, List
import sqlite3
from models.model_dataclasses import TV_Show


class TV_Shows:
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

    def get_all(self) -> List[TV_Show]:
        query = "SELECT * FROM tv_shows"
        return self.execute_query(query)

    def get_by_id(self, record_id: int) -> TV_Show:
        query = "SELECT * FROM tv_shows WHERE id_TV_Show = ?"
        rows = self.execute_query(query, (record_id,))
        row = rows[0]
        return TV_Show(**row)
    
    
