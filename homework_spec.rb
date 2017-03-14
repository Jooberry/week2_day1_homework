require ('minitest/autorun')
require ("minitest/rg")
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

# EXTENSION
require_relative("./homework2")
class TestLibrary < MiniTest::Test

def setup
  @books = [{
      title: "lord_of_the_rings",
      rental_details:{
        student_name: "Jeff",
        date: 01/12/16
      }
    },
    {
      title: "silmarillion",
      rental_details: {
        student_name: "Betty",
        date: 04/12/16
      }
    },
    {
      title: "the_hobbit",
      rental_details: {
        student_name: "Sam",
        date: 06/12/16
      }
    }
  ]
  @library = Library.new(@books)
end

def test_list_books
  assert_equal(@books, @library.list_books)
end

def test_list_book_information
  assert_equal(@books[2], @library.book_info("the_hobbit"))
end

def test_rental_info
  assert_equal({student_name: "Sam",
        date: 06/12/16}, @library.rental_info("the_hobbit"))
end

def test_add_book
  @library.add_book("shopaholic")
  assert_equal({
    title: "shopaholic",
    rental_details: {
      student_name: "",
      date: ""
    }
    }, @library.list_books.last)
end

def test_change_rental_details
  @library.change_rental_details("the_hobbit", "Sam", 06/12/16)
  assert_equal({
    title: "the_hobbit",
    rental_details: {
      student_name: "Sam",
      date: 05/12/16
    }
  }, @library.list_books.last)
end




end