require 'pry'

class Student

  @@all = []
  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def self.find_student(name)
    self.all.select do |student|
      student.first_name == name
    end
  end

  def grade_percentage
    tests = BoatingTest.all.select do |test|
      test.student == self
    end

    passed_tests = BoatingTest.all.select do |test|
      (test.student == self) && (test.status == 'passed')
    end

    x = passed_tests.length
    y = tests.length.to_f
    return x/y
  end

end
