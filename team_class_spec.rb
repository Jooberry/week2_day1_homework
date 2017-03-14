require ('minitest/autorun')
require ("minitest/rg")
require_relative('./team_class')

class TestSportsTeam < MiniTest::Test

def setup
  @players = ["Jim", "Bob", "Tom", "George", "Henry"]
  @sports_team = SportsTeam.new("Codeclan", @players, "Allegra", 0)
end

def test_team_name
  assert_equal("Codeclan", @sports_team.team)
end

def test_team_players
  assert_equal(["Jim", "Bob", "Tom", "George", "Henry"], @sports_team.players_array)
end

def test_coach_name
  assert_equal("Allegra", @sports_team.coach)
end

def test_change_coach_name
  @sports_team.coach = "Vodka"
  assert_equal("Vodka", @sports_team.coach)
end

def test_add_player
  @sports_team.add_player("Floofy")
  assert_equal(["Jim", "Bob", "Tom", "George", "Henry", "Floofy"], @sports_team.players_array)
end

def test_player_in_array?
  result = @sports_team.player_in_array?("Bob")
  assert_equal(true, result)
end

def test_add_points_for_win
  result = @sports_team.points_for_win("win")
  assert_equal(10, result)
end
end
