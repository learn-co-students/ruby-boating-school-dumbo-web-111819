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

        found = BoatingTest.all.find do |boating_instance|
            (boating_instance.student == student) && (BoatingTest.test_name == test_name)
        end
        
        if (found)
            found.test_status = "passed"
            return found
        end
        0
    end

    def fail_student(student, test_name)
        found = BoatingTest.all.find do |boating_instance|
            (boating_instance.student == student) && (BoatingTest.test_name == test_name)
        end
        
        if (found)
            found.test_status = "failed"
            return found
        end
        0
    end
end
