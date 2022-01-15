require 'sqlite3'

if(ARGV.size < 2)
    puts "Usage: ruby insert.rb [key] [value]"
    exit
end

db = SQLite3::Database.new("dict.db")
db.execute("INSERT INTO dict (key, value) VALUES ('#{ARGV[0]}', '#{ARGV[1]}')")

