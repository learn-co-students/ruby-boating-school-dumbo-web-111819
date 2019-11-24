class Student
  attr_accessor :first_name
  @@all = []
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(name, status, instructor)
     # binding.pry
    BoatingTest.new(self, name, status, instructor)

  end

  def self.find_student(first_name)

    Student.all.find{|student|
      first_name == student.first_name
    }
  end

  def grade_percentage
    # binding.pry
    total_test = BoatingTest.all.select{|test|
      test.student == self
    }

    total_test_passed = total_test.select{|test|
      test.status == "pass"
    }

    (total_test_passed.count.to_f / total_test.count.to_f) * 100.0


  end

  def self.all
    @@all
  end
end#end of student method
