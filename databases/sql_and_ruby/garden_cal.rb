require 'date'
require 'sqlite3'

db = SQLite3::Database.new("calendar.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS water_log(
    id INTEGER PRIMARY KEY,
    water_date VARCHAR(255),
    plant_type INTEGER
  )
SQL

db.execute(create_table_cmd)

def split_date(date)
  date.split(', ')
end

def insert_entry(db, date, plant)
  db.execute("INSERT INTO water_log (water_date, plant_type) VALUES (?, ?)", [date, plant])
end

user_input = ""
while user_input != "n"
  puts "Would you like to make an entry to the garden log? (y or n)"
  user_input = gets.chomp
  if user_input == "y"
    puts "Enter the date below in the following format"
    puts "year-month-day, (v = vegetables, s = succulents, p = perennials)"
    puts "ex: 2016-07-22, s    for succulents watered on July 22nd 2016"
    user_date = gets.chomp
    water_date = split_date(user_date)[0]
    plant_type = split_date(user_date)[1]
    insert_entry(db, water_date, plant_type)
  # p Date._parse(water_date)
  else
    user_input = "n"
  end
end
