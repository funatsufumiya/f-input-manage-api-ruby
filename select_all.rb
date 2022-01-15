require 'sqlite3'

db = SQLite3::Database.new("dict.db")
db.execute("SELECT key, value FROM dict").each do |e|
    p e
end