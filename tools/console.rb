require_relative '../config/environment.rb'
require_relative '../app/models/student.rb'
require_relative '../app/models/instructor.rb'
require_relative '../app/models/boatingtest.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)
sb_pass = spongebob.add_boating_test("Don't Crash 101", "passed", puff)
sb_pass2 = spongebob.add_boating_test("Don't Crash 101", "passed", puff)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
