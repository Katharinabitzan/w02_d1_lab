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
