require 'sqlite3'

if(ARGV.size < 2)
    puts "Usage: ruby delete.rb [key] [value]"
    exit
end

db = SQLite3::Database.new("dict.db")
db.execute("DELETE FROM dict WHERE key = '#{ARGV[0]}' AND value = '#{ARGV[1]}'")

