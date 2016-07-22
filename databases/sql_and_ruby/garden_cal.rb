require 'date'
require 'sqlite3'

db = SQLite3::Database.new("calendar.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS plants(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
    );
  CREATE TABLE IF NOT EXISTS water_log(
    id INTEGER PRIMARY KEY,
    water_date VARCHAR(255),
    plant_type INTEGER,
    FOREIGN KEY (plant_type) REFERENCES plants(id)
    );
  INSERT INTO plants (name) VALUES ("Perennials");
  INSERT INTO plants (name) VALUES ("Succulents");
  INSERT INTO plants (name) VALUES ("Vegetables");
SQL

db.execute_batch(create_table_cmd)


def split_date(date)
  date.split(', ')
end

def insert_entry(db, date, plant)
  case plant
  when "p"
    plant = 1
  when "s"
    plant = 2
  when "v"
    plant = 3
  else
    plant = nil
  end
  db.execute("INSERT INTO water_log (water_date, plant_type) VALUES (?, ?)", [date, plant])
end

def make_entry(db)
    puts "Enter the date below in the following format"
    puts "year-month-day, (p = perennials, s = succulents, v = vegetables)"
    puts "ex: 2016-07-22, s    for succulents watered on July 22nd 2016"
    user_date = gets.chomp
    water_date = split_date(user_date)[0]
    plant_type = split_date(user_date)[1]
    insert_entry(db, water_date, plant_type)
end

# def view_log(db)
#   logs = db.execute("SELECT * FROM water_log")
#   logs.each do |log|
#     puts ""
# end


user_input = ""
while user_input != "5"
  puts "Type in the number for what you want to do with the garden log:"
  puts "1. Make an entry"
  puts "2. View the garden log"
  puts "3. Delete an entry"
  puts "4. Get a reminder for the next time to water"
  puts "5. Exit"
  user_input = gets.chomp

  case user_input
    when "1"
      make_entry(db)
    when "2"
      # view_log(db)
    when "3"
    when "4"
    else
      user_input = "5"
    end
end


  # puts "Would you like to make an entry to the garden log? (y or n)"
  # user_input = gets.chomp
  # if user_input == "y"
  #   puts "Enter the date below in the following format"
  #   puts "year-month-day, (v = vegetables, s = succulents, p = perennials)"
  #   puts "ex: 2016-07-22, s    for succulents watered on July 22nd 2016"
  #   user_date = gets.chomp
  #   water_date = split_date(user_date)[0]
  #   plant_type = split_date(user_date)[1]
  #   insert_entry(db, water_date, plant_type)
  # # p Date._parse(water_date)
  # else
  #   user_input = "n"
  # end