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

class Team
  attr_reader :team_name, :players, :points
  attr_accessor :coach
  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def new_player(new_player)
    @players << new_player
  end

  def find_player(player_name)
    return @players.include?(player_name)
  end

  def game_result(result)
    @points += 1 if result == "Win"
  end
end

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
    book_info = @library.find{|x| x[:title] == book_name}
    return book_info[:rental_details]
  end

  def add_title(book_name)
    new_book = {title: book_name, rental_details: {
      student_name: "",
      date: "" }
    }
    @library << new_book
  end

  # def change_rental_details(book_name, new_student, new_date)
  #   @library.get_rental_info(book_name)
  #   @library[book_name][:rental_details][:date] = new_date
  #   @library[book_name][:rental_details][:student_name] = new_student
  #
  # end
end
