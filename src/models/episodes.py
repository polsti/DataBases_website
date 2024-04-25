from typing import Any, Tuple, List
import sqlite3
from models.model_dataclasses import Episode


class Episodes:
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

    def get_all(self) -> List[Episode]:
        query = "SELECT * FROM episodes"
        rows = self.execute_query(query)
        return [Episode(**row) for row in rows]


    def get_by_id(self, record_id: int) -> Episode:
        query = "SELECT * FROM episodes WHERE id_Season = ?"
        rows = self.execute_query(query, (record_id,))
        row = rows[0]
        return Episode(**row)


    def insert(self, record: Episode) -> bool:
        
        query = """
          INSERT INTO episodes (
              title,
              description,
              episode_number,
              duration,
              id_Episode,
              fk_Languageid_Language,
              fk_Seasonid_Season
          )
          VALUES (?, ?, ?, ?, ?, ?, ?)
          """
        values = tuple(record.model_dump().values())[1:]  # forget about ID

        try:
            self.execute_query(query, values)
        except sqlite3.DatabaseError:
            return False
        return True

    def update(self, record: Episode) -> bool:
        
        query = """
          UPDATE songs SET
              title = ?,
              description = ?,
              episode_number = ?,
              duration = ?,
              id_Episode = ?,
              fk_Languageid_Language = ?
              fk_Seasonid_Season = ?
          WHERE id_Season = ?
          """

        record_id = record.id_Episode
        values = tuple(record.model_dump().values())[1:]
        self.execute_query(query, (*values, record_id))

        return bool(self.cursor.rowcount)

    def remove(self, record_id: int) -> bool:
      
        query = "DELETE FROM episodes WHERE episode_id = ?"
        self.execute_query(query, (record_id,))
        return bool(self.cursor.rowcount)
