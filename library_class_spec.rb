require ('minitest/autorun')
require_relative("./library_class")
require ("minitest/rg")

class TestLibrary < MiniTest::Test

def setup
  @books = [
    {
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