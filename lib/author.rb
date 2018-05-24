require './lib/book'

class Author
  attr_reader :books
  
  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]

    @books = []
  end

  def add_book(new_title, pub_date)
    book = Book.new({:author_first_name => @first_name,
                     :author_last_name => @last_name,
                     :title => new_title,
                     :publication_date => pub_date })
    books << book
    return book
  end

end
