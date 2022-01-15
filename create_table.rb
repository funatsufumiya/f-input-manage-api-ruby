require 'sqlite3'

db = SQLite3::Database.new("dict.db")

sql_create = <<SQL
CREATE TABLE dict (
  id integer PRIMARY KEY AUTOINCREMENT,
  key text ,
  value text);
SQL

db.execute(sql_create)