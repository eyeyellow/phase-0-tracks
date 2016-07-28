# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true


# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# A /contact route that displays an address:

get '/contact' do
  "DBC San Francisco address:<br>633 Folsom St, San Francisco, CA 94107"
end

# A /great_job route that can take a person's name
# as a query parameter (not a route parameter)
# and say "Good job, [person's name]!".
# If the query parameter is not present,
# the route simply says "Good job!"

get '/great_job/' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# A route that uses route parameters to add two numbers
# and respond with the result. The data types are tricky here
# -- when will the data need to be (or arrive as) a string?

get '/:num1/add/:num2' do
  first_num = params[:num1].to_i
  second_num = params[:num2].to_i
  result = first_num + second_num
  result.to_s
end

# Optional bonus: Make a route that allows the user to search
# the database in some way -- maybe for students who have a
# certain first name, or some other attribute. If you like,
# you can simply modify the home page to take a query parameter,
# and filter the students displayed if a query parameter is present.

# This seraches for students by campus as a query parameter on the homepage:
# name with spaces have to be interspersed with %20:
# i.e. http://localhost:9393/?name=Dandre%20Wiegand

# get '/' do
#   student = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
#   student.to_s
# end

get '/' do
  erb :home
end

post '/search' do
  @students = db.execute("SELECT * FROM students WHERE campus=?", [params['campus']])
  erb :home
end