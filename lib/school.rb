class School

attr_reader :name, :roster

def initialize(name)
  @name = name 
  @roster = {}
end 

def grade(grade_value)
  @roster[grade_value]
end


def sort
  sorted = {}
@roster.collect do |grade, students|
  sorted[grade] = students.sort
end 
sorted
end 

def add_student(student_name, grade)
  if @roster.include?(grade)
  else 
    @roster[grade] = []
  end 
  @roster[grade] << student_name
end 
end 