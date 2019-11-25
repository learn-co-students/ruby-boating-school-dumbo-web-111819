class BoatingTest
    attr_accessor :student, :bt_name, :status, :instructor

    @@all = []

    def initialize(student, bt_name, status, instructor)
        @student = student
        @bt_name = bt_name
        @status = status
        @instructor = instructor

        @@all << self
    end

    def self.all 
        @@all
    end

end




############# TO DO ####################

############## DONE ####################
# `BoatingTest` class:
# * should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# * `BoatingTest.all` returns an array of all boating tests
