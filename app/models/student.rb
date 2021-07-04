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

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(first_name)
        Student.all.find do |student_instance|
            student_instance.first_name == first_name
        end
    end
        
    def grade_percentage #float
            passed = BoatingTest.all.select do |test_instance|
                test_instance.test_status == "passed"
            end
            all_tests = BoatingTest.all.map do |test_instance|
                test_instance.student == self
            end
            #binding.pry
        (passed.count.to_f/all_tests.count)
    end

end
