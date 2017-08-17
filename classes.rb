class Student
    def assign_class(age)
        @age = age
    end
    def show_class
        puts "#{@age} year olds go to class #{@age.to_i - 4}."
    end
end