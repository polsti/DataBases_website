from typing import Any, Tuple, List
import sqlite3
from models.model_dataclasses import Season


class Seasons:
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

    def get_all(self) -> List[Season]:
        query = "SELECT * FROM seasons"
        rows = self.execute_query(query)
        return [Season(**row) for row in rows]

    def get_by_id(self, record_id: int) -> Season:
        query = "SELECT * FROM seasons WHERE id_season = ?"
        rows = self.execute_query(query, (record_id,))
        row = rows[0]
        return Season(**row)


    def insert(self, record: Season) -> bool:
       
        query = """
          INSERT INTO seasons (
              title,
              description,
              release_date,
              fk_TV_Showid_TV_Show
          )
          VALUES (?, ?, ?, ?)
          """
        values = tuple(record.model_dump().values())[1:]  # forget about ID

        try:
            self.execute_query(query, values)
        except sqlite3.DatabaseError:
            return False
        return True

    def update(self, record: Season) -> bool:
        
        query = """
          UPDATE seasons SET
              id_Season = ?,
              title = ?,
              description = ?,
              release_date = ?,
              fk_TV_Showid_TV_Show = ?
          WHERE id_Season = ?
          """

        record_id = record.id_Season
        values = tuple(record.model_dump().values())[1:]
        self.execute_query(query, (*values, record_id))

        return bool(self.cursor.rowcount)

