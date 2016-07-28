# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# /student_age/ route leads to a page where the user can seach for
# students' ages and returns results to to page diplayed underneath
# the search form in :search_by_age

get '/student_age/' do
  erb :search_by_age
end

post '/search' do
  @students = db.execute("SELECT * FROM students WHERE age=?", [params['age']])
  erb :search_by_age
end