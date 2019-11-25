class Instructor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all 
        @@all
    end

    def pass_student(student, test_name)
        passtest = BoatingTest.all.find{|test| test.student == student && test.bt_name == test_name}
        if passtest
            passtest.status = "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student, test_name)
        failtest = BoatingTest.all.find{|test| test.student == student && test.bt_name == test_name}
        if failtest
            failtest.status = "fail"
        else
            BoatingTest.new(student, test_name, "fail", self)
        end
    end
end

####### TO DO ############
# * `Instructor#pass_student` should take in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the `BoatingTest` instance.
# * `Instructor#fail_student` should take in a student instance and test name. Like `#pass_student`, it should try to find a matching `BoatingTest` and update its status to 'failed'. If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.

########## DONE ##########
# * initialize with a name
# * `Instructor.all` should return all instructors