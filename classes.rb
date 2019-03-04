class Student
  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language(fav_lan)
    return "I love #{fav_lan}"
  end
end
