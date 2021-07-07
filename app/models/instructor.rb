class Instructor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def pass_student(student,name,status = name.status)
        
        if name.instance_of? BoatingTest
            @answer = name
            @answer.status = "passed"
        else
           x = BoatingTest.new(student,name,status,self)
        end
        x
       
    end
    
    def fail_student(student,name,status = name.status)
        
        if name.instance_of? BoatingTest
            @answer = name
            @answer.status = "fail"
        else
           x = BoatingTest.new(student,name,status,self)
        end
        x
       
    end
   


end




