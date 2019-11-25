class Student
    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(bt_name, status, instructor)
        BoatingTest.new(self, bt_name, status, instructor)
    end

    def self.find_student(first_name)
        self.all.find do |student|
            student.first_name == first_name
        end
    end

    def tests
        BoatingTest.all.select do |test|
            test.student == self
        end
    end
    
    def grade_percentage
        passed = self.tests.select do |test|
                    test.status == "passed"
                 end
        (self.tests.count.to_f / passed.count.to_f) * 100.0
    end

end

###### TO DO ######

##### DONE #####
# `Student` class:
# * should initialize with `first_name`
# * `Student.all` should return all of the student instances
# * `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# * `Student.find_student` will take in a first name and output the student (Object) with that name
# * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)