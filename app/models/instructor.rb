class Instructor
attr_accessor :name
@@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def pass_student(student, test_name)
    binding.pry
    find_test = BoatingTest.all.find{|test|
      test.name == test_name && test.student == student
    }
    if find_test
     find_test.status = "pass"
    else
     find_test = BoatingTest.new(student, test_name, "pass", self)
    end
    find_test
  end

 def fail_student(student, test_name)
   binding.pry

    find_test = BoatingTest.all.find{|test|
     student == test.student && test_name == test.name
   }

   if find_test
    find_test.status = "fail"
   else
    find_test = BoatingTest.new(student, test_name, "fail", self)
   end
   find_test


 end

  def self.all
    @@all
  end

end
