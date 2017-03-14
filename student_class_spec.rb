require ('minitest/autorun')
require ("minitest/rg")
require_relative('./student_class')

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