require ('minitest/autorun')
require_relative('./homework')

# Part A
class TestStudent < MiniTest::Test

def setup
  @student = Student.new("Joo", 11, "Ruby")
end

def test_student_name
  assert_equal("Joo", @student.student_name)
end

def test_cohort_number
  assert_equal(11, @student.cohort_number)
end

def test_set_student_name
  @student.set_student_name("Jooniper")
  assert_equal("Jooniper", @student.student_name)
end

def test_student_can_talk
  assert_equal("I can talk!", @student.talk)
end

def test_choose_favourite_Language
  assert_equal("I love Ruby", @student.favourite_language)
end
end

# Part B
class TestSportsTeam < MiniTest::Test

def setup
  @sports_team = SportsTeam.new("Codeclan", ["Jim", "Bob", "Tom", "George", "Henry"], "Allegra", 0)
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
  result = @sports_team.points_for_win("Win")
  assert_equal(10, result)
end



end