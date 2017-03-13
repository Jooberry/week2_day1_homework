class Student

def initialize(student_name, cohort_number)
  @student_name = student_name
  @cohort_number = cohort_number
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



end