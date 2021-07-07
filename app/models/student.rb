class Student
    attr_accessor :first_name
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
        
    end

    def self.all
        @@all
    end
    
    def add_boating_test(test_name,test_status,instructor)
        BoatingTest.new(self,test_name,test_status,instructor)
    end
    def self.find_student(first_name)
        Student.all.find do |student|
            student.first_name.downcase == first_name.downcase
        end       
    end
    def grade_percentage
        test_collection = []
        pass_counter = 0.0
        fail_counter = 0.0
        grade = 0.0
        test_collection = BoatingTest.all.select{|test|self.first_name == test.student.first_name}
            
    
        #iterate over test_collection, 
        # collect pass or fail and account in a counter
        test_collection.each do |instance|
            if instance.status == "passed"
                pass_counter += 1
            else
                fail_counter += 1
            end
           
        end
        grade = pass_counter/(pass_counter + fail_counter)
        grade *= 100
        binding.pry
    end

end



