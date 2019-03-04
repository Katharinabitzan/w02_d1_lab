class Library
  attr_reader :library
  attr_writer :library

  def initialize(library)
    @library = library
  end

  def get_book(book_name)
    return @library.find{|x| x[:title] == book_name}
  end

  def get_rental_info(book_name)
    book_info = get_book(book_name)
    return book_info[:rental_details]
  end

  def add_title(book_name)
    new_book = {
      title: book_name,
      rental_details: {
      student_name: "",
      date: "" }
    }
    @library << new_book
  end

  def change_rental_details(book_name, new_student, new_date)
    book_info = get_rental_info(book_name)
    book_info[:student_name] = new_student
    book_info[:date] = new_date
    for x in @library
      if x[:title] == book_name
        x[:rental_details] = book_info
      end
    end
  end

end
