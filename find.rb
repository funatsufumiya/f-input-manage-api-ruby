require 'sqlite3'

if(ARGV.size < 1)
    puts "Usage: ruby find.rb [key]"
    exit
end

db = SQLite3::Database.new("dict.db")
db.execute("SELECT key, value FROM dict WHERE key = '#{ARGV[0]}'").each do |e|
    p e
end

