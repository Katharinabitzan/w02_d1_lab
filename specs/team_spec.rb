require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')

class TestClasses_team < Minitest::Test

  def setup
    @team = Team.new("ravens", ["Bob", "Jim", "Dan", "Connor", "Jenny"], "Pawel", 0)
  end

  def test_team_name
    assert_equal("ravens", @team.team_name)
  end

  def test_players
    assert_equal(["Bob", "Jim", "Dan", "Connor", "Jenny"], @team.players)
  end

  def test_coach
    assert_equal("Pawel", @team.coach)
  end

  def test_coach_replace
    @team.coach = "Jarrod"
    assert_equal("Jarrod", @team.coach)
  end

  def test_new_player
    @team.new_player("Monika")
    assert_equal(["Bob", "Jim", "Dan", "Connor", "Jenny", "Monika"], @team.players)
  end

  def test_find_player__not_foundS
    result = @team.find_player("Max")
    assert_equal(false, result)
  end

  def test_find_player__found
    result = @team.find_player("Jim")
    assert_equal(true, result)
  end

  def test_game_result__win
    @team.game_result("Win")
    assert_equal(1, @team.points)
  end

  def test_game_result__lose
    @team.game_result("Lose")
    assert_equal(0, @team.points)
  end

end
