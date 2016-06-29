class Book
  attr_reader :title, :author, :rating
  attr_accessor :read, :pub_info

  def initialize(title, author)
    @title = title
    @author = author
  end

  def read_it(user_input)
    if user_input == "y"
      @read = true
    else
      @read = false
    end
  end

  def rate(user_input)
    if @read
      @rating = "You rated the book as #{user_input}."
    else
      @rating = "You have not read this book yet."
    end
  end

  def cite
    first_name = @author.split(' ')[0]
    last_name = @author.split(' ')[1]
    "#{last_name}, #{first_name}. #{@title}. #{pub_info[:city]}: #{pub_info[:publisher]}, #{pub_info[:date]}"
  end

end

book_array = []
i = 0

add_book = ""
until add_book == "n"

  puts "Would you like to add a book? (y or n)"
  add_book = gets.chomp
  break unless add_book == "y"
  puts "What is the title of the book?"
  title = gets.chomp
  puts "What is the name of the author?"
  author = gets.chomp
  book_array[i] = Book.new(title, author)
  book_array[i].pub_info = {}
  puts "What is the publisher of the book?"
  book_array[i].pub_info[:publisher] = gets.chomp
  puts "Where was the book published?"
  book_array[i].pub_info[:city] = gets.chomp
  puts "What year was the book published?"
  book_array[i].pub_info[:date] = gets.chomp
  puts "Have you read this book? (y or n)"
  book_array[i].read_it(gets.chomp)
    if book_array[i].read
      puts "In a few words, how do you rate the book?"
      book_array[i].rate(gets.chomp)
    else
      book_array[i].rate(false) # book_array[i].read = false ?
    end

  i += 1

end

puts "\n\nHere are MLA citations and comments for the #{i} books that you entered:\n\n"

book_array.each do |book|
  puts "#{book.cite}\n#{book.rating}\n\n"
end



=begin
test = Book.new("Information Doesn't Want to Be Free", "Cory Doctorow")
test.read_it("not done")
test.rate("quite good")
test.pub_info = {publisher: "McSweeney's", city: "San Francisco", date: 2014}
puts "#{test.title} by #{test.author}"
puts test.rating
puts "Finished reading: #{test.read}"
puts "Published by #{test.pub_info[:publisher]} in #{test.pub_info[:city]} on #{test.pub_info[:date]}."
puts test.cite
=end


=begin
Book class
Three attributes: date published, title, author, publisher info [array]
Three methods:
  read_it - evaluates to true/false taking input
  cite - puts MLA citation
  rate - user input to evaluate whether it was a good read (non-boolean)
=end