# Introduction to Inheritance

# Pseudocode
# everything that globalcohort has, localcohort will have
# local will have extra

#local cohort will have
# city

# DEFINE cohort to have the following attributes
#   students, name, p0_start_date, immersive_start_date, grad_date, email, num_of_students
# DEFINE methods
#   add_student will take a name as param
#   push the name onto the list of students
# end

# remove_student will take a name as param
#   remove student with that name from the list
# end

# currently_in_phase 
#   return phase (0, 1, 2, or 3) based on date

# graduated?
#   return true if current date > grad date
# END

# END

# DEFINE local cohort will inherit from cohort
#   attribute city
# END

# Initial Solution
require 'date'

class Student
  
  attr_reader :name
  attr_accessor :email
  
  def initialize(name, email)
    @name = name
    @email = email
  end
  
end

class Cohort
  
  attr_reader :students
  #parameters: name is String, students is array of Student, p0_start_date is a Date
  def initialize(name, students, p0_start_date)
    @name = name
    @students = students
    @p0_start_date = p0_start_date
    @immersive_start_date = p0_start_date + 63
    @grad_date = @immersive_start_date + 70
  end
  
  #parameters: student is a Student
  def add_student(student)
    @students.push(student)
  end
  
  def remove_student(student_name)
    @students.reject!{ | student | student.name == student_name }
  end
  
  def currently_in_phase
    case
    when 
    	Date.today < @immersive_start_date then 0
    when 
    	Date.today < @immersive_start_date + 21 then 1
    when 
    	Date.today < @immersive_start_date + 42 then 2
    else 
    	3
    end
  end
      
  def graduated?
    Date.today > @grad_date
  end
end

class LocalCohort < Cohort
  #your code here
  attr_accessor :city
  
  def initialize(name, students, p0_start_date, city)
    super(name, students, p0_start_date)
    @city = city
  end
end
      
# Reflection
# What concepts did you review in this challenge?
# => Learned the Date and Time classes, and the super key word.
# => Personally, I don't think this was a good challenge to focus on inheritence.
# => I the instructions were vague and something a little more intuitive would be
# => better to focus on inheritence, like Car < Vehicle, or Dog < Animal
      
# What is still confusing to you about Ruby?
# => Not really confusing, but I don't know all the built in methods of course.
      
# What are you going to study to get more prepared for Phase 1?
# => built in methods and computer science stuff, like search/sort, recursion, etc.