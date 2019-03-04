require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestClasses_library < Minitest::Test

  def setup
    @library = Library.new([
      {
        title: "The Hobbit",
        rental_details: {
          student_name: "Eric",
          date: "04/03/2019" }
      },
      {
        title: "Learn Ruby",
        rental_details: {
          student_name: "Becky",
          date: "02/02/2020" }
      },
      {
        title: "Harry Potter",
        rental_details: {
          student_name: "James",
          date: "10/10/2034" }
        },
      {
        title: "How to not be weird",
        rental_details: {
          student_name: "Katharina",
          date: "02/05/2019" }
        }
    ])
  end

  def test_get_book
    book = @library.get_book("Harry Potter")
    assert_equal(@library.library[2], book)
  end

  def test_get_rental_info
    rental_info = @library.get_rental_info("How to not be weird")
    assert_equal(@library.library[3][:rental_details],rental_info)
  end

  def test_add_title
    @library.add_title("catch22")
    assert_equal(5, @library.library.length)
  end

  def test_change_details
    @library.change_details("Harry Potter", "Martha", "22/07/1999")
    assert_equal(@library.library[2][:rental_details][:student], "Martha")
  end

end
