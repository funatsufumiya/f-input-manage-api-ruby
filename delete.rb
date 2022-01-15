require 'sqlite3'

if(ARGV.size < 2)
    puts "Usage: ruby delete.rb [key] [value]"
    exit
end

db = SQLite3::Database.new("dict.db")
count = db.execute("SELECT key, value FROM dict WHERE key = '#{ARGV[0]}' AND value = '#{ARGV[1]}'").size
db.execute("DELETE FROM dict WHERE key = '#{ARGV[0]}' AND value = '#{ARGV[1]}'")
puts "Deleted #{count} rows"

