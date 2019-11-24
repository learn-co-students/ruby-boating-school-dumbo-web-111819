require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#student info
saima = Student.new("saima")
ashfi = Student.new('ashfi')
farshid = Student.new('fzee')

# instuctor info
ian = Instructor.new("ian")

#boating test info
#:student(object), :BoatingTest_name , :status, :Instructor(object)

b1 = BoatingTest.new(saima, "test-1", "pass", ian)
ba = BoatingTest.new(saima, "test_2", "fail", ian)
b2 = BoatingTest.new(ashfi, "test-2", "fail", ian)
# saima.add_boating_test("test-3", "fail", ian)

# farshid.add_boating_test("t-3", "pass", ian)
# find_saima = Student.find_student("saima")


# ian.fail_student(saima, "test_2")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
