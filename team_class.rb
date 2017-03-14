class SportsTeam

  attr_reader :team, :players_array, :points
  attr_accessor :coach

  def initialize(team, players_array, coach, points)
    @team = team
    @players_array = players_array
    @coach = coach
    @points = 0
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
  if result.downcase == "win"
    @points += 10
  end
end

end