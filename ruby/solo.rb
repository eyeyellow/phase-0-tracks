class Book
  attr_reader :title, :author, :rating
  attr_accessor :read, :pub_info

  def initialize(title, author)
    @title = title
    @author = author
  end

  def read_it(user_input)
    if user_input == "yes"
      @read = true
    else
      @read = false
    end
  end

  def rate(user_input)
    @rating = "You rated the book as #{user_input}."
  end

  def cite
    first_name = @author.split(' ')[0]
    last_name = @author.split(' ')[1]
    "#{last_name}, #{first_name}. #{@title}. #{pub_info[:city]}: #{pub_info[:publisher]}, #{pub_info[:date]}"
  end

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