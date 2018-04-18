require 'pry'


class School

  attr_accessor :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student_name, grade)
     @roster[grade] = [] unless @roster.keys.include?(grade)
     @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    # sorted_students = {}
    # @roster.each do |grade, students| #grade
    #   sorted_students[grade] = students.sort
    #   binding.pry
    # end
    #   sorted_students
    @roster.keys.values.sort
    # binding.pry
  end

end
