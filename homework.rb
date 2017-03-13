# Part A
class Student

def initialize(student_name, cohort_number, language)
  @student_name = student_name
  @cohort_number = cohort_number
  @language = language
end

def student_name
  return @student_name
end

def cohort_number
  return @cohort_number
end

def set_student_name(name)
  @student_name = name
end

def talk
  return "I can talk!"
end

def favourite_language
  return "I love #{@language}"
end
end

# Part B

class SportsTeam

attr_accessor :team, :players_array, :coach

def initialize(team, players_array, coach, points)
  @team = team
  @players_array = players_array
  @coach = coach
  @points = points
end

# def team_name
#   return @team
# end

# def team_players
#   return @players_array
# end

# def coach
#   return @coach
# end

# def change_coach_name(name)
#   @coach = name
# end

def add_player(new_player)
  @players_array << new_player
end

def player_in_array?(player)
  for person in @players_array
    return true if player == person
  end
  return false
end

def points_for_win(result)
  if result == "Win"
    @points += 10
  end
end


end