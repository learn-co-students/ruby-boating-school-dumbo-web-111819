require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new("Spongebob")

patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
first = BoatingTest.new(spongebob,"first","passed", krabs)
second = BoatingTest.new(spongebob,"second","passed",puff)
 
no_crashing = spongebob.add_boating_test("Don't Crash 101", "passed", puff)

power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)
spongebob.grade_percentage
x = krabs.pass_student(spongebob,power_steering_failure)

y = krabs.fail_student(patrick, first)
binding.pry 
#leave this here to ensure binding.pry isn't the last line

