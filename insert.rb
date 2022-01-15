require 'sqlite3'

if(ARGV.size < 2)
    puts "Usage: ruby insert.rb [key] [value]"
    exit
end

db = SQLite3::Database.new("dict.db")
db.execute("SELECT key, value FROM dict WHERE key = '#{ARGV[0]}' AND value = '#{ARGV[1]}'") do |row|
    puts "Already exists"
    exit
end

db.execute("INSERT INTO dict (key, value) VALUES ('#{ARGV[0]}', '#{ARGV[1]}')")

