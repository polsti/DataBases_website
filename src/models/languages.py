from typing import Any, Tuple, List
import sqlite3
from models.model_dataclasses import Language


class Languages:
    def __init__(self):
        self.db_path = "db/tv.sqlite"
        self.connection = sqlite3.connect(self.db_path)
        self.connection.row_factory = sqlite3.Row
        self.cursor: sqlite3.Cursor

    def __enter__(self):
        
        self.cursor = self.connection.cursor()
        return self

    def __exit__(self, exc_type, exc_value, exc_traceback):
        self.connection.commit()

    def execute_query(self, query: str, parameters: Tuple[Any, ...] = ()) -> List[Tuple[Any, ...]]:
       
        try:
            with self:
                self.cursor.execute(query, parameters)
                result = self.cursor.fetchall()
        except sqlite3.Error as e:
            print(f"Some error during query execution occurred: {e}")
            raise e

        return [dict(row) for row in result]

    def get_all(self) -> List[Language]:
        query = "SELECT * FROM languages"
        rows = self.execute_query(query)
        return [Language(**row) for row in rows]

    def get_by_id(self, record_id: int) -> Language:
        query = "SELECT * FROM languages WHERE id_Language = ?"
        rows = self.execute_query(query, (record_id,))
        row = rows[0]
        return Language(**row)
 