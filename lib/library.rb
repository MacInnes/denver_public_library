class Library
  attr_reader :books
  
  def initialize
    @books = []
  end

  def add_to_collection(book)
    @books << book
  end

  def include?(title)
    exists = @books.select do |book|
      book.title == title
    end
    return exists.length == 1
  end

  def card_catalogue
    books.sort_by do |book|
      book.author_last_name
    end
  end

  def find_by_author(name)
    first_name = name.split(" ")[0]
    last_name = name.split(" ")[1]
    books.find_all do |book|
      book.author_first_name == first_name && book.author_last_name == last_name
    end
  end

  def find_by_publication_date(date)
    books.select do |book|
      book.publication_date == date
    end[0]
  end

end