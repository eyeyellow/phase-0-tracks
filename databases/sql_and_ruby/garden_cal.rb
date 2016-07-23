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

view_log_cmd = <<-SQL
SELECT plants.name, water_log.water_date FROM
   plants JOIN water_log
   ON plants.id = water_log.plant_type
SQL

reminder_query_cmd = <<-SQL
SELECT plants.name, water_log.water_date FROM
   plants JOIN water_log
   ON plants.id = water_log.plant_type
   GROUP BY water_log.plant_type
   ORDER BY water_log.id DESC
   LIMIT 3
SQL

db.execute_batch(create_table_cmd)


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
    water_date = user_date.split(', ')[0]
    plant_type = user_date.split(', ')[1]
    insert_entry(db, water_date, plant_type)
end

def view_log(db, view_log_cmd)
  puts "-----------------------------------------"
  logs = db.execute(view_log_cmd)
  logs.each do |log|
    puts "#{log[0]} were watered on #{log[1]}."
  end
end

def calc_next_date(log)
  plant = log[0]
    case plant
  when "Perennials"
    days = 2
  when "Succulents"
    days = 7
  when "Vegetables"
    days = 1
  else
    days = nil
  end
  d = Date.parse(log[1])
  puts "The next time to water your #{plant.downcase} is on #{d.next_day(days)}."
end

def get_reminder(db, reminder_query_cmd)
  puts "-----------------------------------------"
  logs = db.execute(reminder_query_cmd)
  logs.each do |log|
    calc_next_date(log)
  end
end

user_input = ""
while user_input != "4"
  puts "\nType in the number for what you want to do with the garden log:"
  puts "1. Make an entry"
  puts "2. View the garden log"
  puts "3. Get a reminder for the next time to water"
  puts "4. Exit"
  user_input = gets.chomp

  case user_input
    when "1"
      make_entry(db)
    when "2"
      view_log(db, view_log_cmd)
    when "3"
      get_reminder(db, reminder_query_cmd)
    else
      user_input = "4"
    end
end
