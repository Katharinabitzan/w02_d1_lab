require('minitest/autorun')
require('minitest/rg')
require_relative('../classes.rb')

class TestClasses_student < Minitest::Test

  def test_student_name
    student = Student.new("Bob", "I01")
    assert_equal("Bob", student.name)
  end

  def test_student_cohort
    student = Student.new("Bob", "I01")
    assert_equal("I01", student.cohort)
  end

  def test_student_name_change
    student = Student.new("Bob", "I01")
    student.name = "Jimmy"
    assert_equal("Jimmy", student.name)
  end

  def test_student_cohort_change
    student = Student.new("Bob", "I01")
    student.cohort = "G10"
    assert_equal("G10", student.cohort)
  end

  def test_talk
    student = Student.new("Bob", "I01")
    words = student.talk()
    assert_equal("I can talk!", words)
  end

  def test_say_favourite_language
    student = Student.new("Bob", "I01")
    words = student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", words)
  end
end
