class Instructor

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(stud, test_name)
    BoatingTest.all.each do |test|
      if (test.student == stud) && (test.name == test_name)
        test.status = 'passed'
      else
        BoatingTest.new(student, name, status = 'passed', self)
      end
    end
  end

  def fail_student(stud, test_name)
    BoatingTest.all.each do |test|
      if (test.student == stud) && (test.name == test_name)
        test.status = 'failed'
      else
        BoatingTest.new(student, name, status = 'failed', self)
      end
    end
  end

end
