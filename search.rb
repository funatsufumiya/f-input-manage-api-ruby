require 'sqlite3'

if(ARGV.size < 1)
    puts "Usage: ruby search.rb [value]"
    exit
end

db = SQLite3::Database.new("dict.db")
db.execute("SELECT key, value FROM dict WHERE value LIKE '%#{ARGV[0]}%'").each do |e|
    p e
end

