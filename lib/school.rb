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
    a = @roster.sort_by {|grade, students| grade}
    binding.pry
    ###_______
    # sorted_students = {}
    # @roster.each do |grade, students|
    #   binding.pry #grade
    # #   sorted_students[grade] = students.sort
    # #   binding.pry
    # end
    # #   sorted_students

  end

end
