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

  def add_title(new_title)
    @library << new_title
  end

  def change_details(title, new_student, new_date)
    rental_details = get_rental_info(title)
    rental_details[:student] = new_student
    rental_details[:date] = new_date

    if title == get_book(title)
      @library[:rental_details][:student] = new_student
      @library[:rental_details][:date] = new_date
    end
  end
end
