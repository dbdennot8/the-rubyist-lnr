class Student
    attr_accessor :name, :age, :height
    def initialize(name, age=30, height=165)
        @name = name
        @age = age
        @height = height
    end
end

denno = Student.new("Dennis Mithamo", 25, 176)

# puts "Name = #{denno.name}"
# puts "Height = #{denno.height}"
# puts "Age = #{denno.age}"
puts denno.name + " " + denno.age.to_s + " " + denno.height.to_s

