module Roomable
    $in_house = []
    def assign_bed
        $in_house << name 
        "#{name} assigned room"
    end
end

class Student
    attr_accessor :name, :age, :course
    def initialize(name, age, course)
        @name = name
        @age = age
        @course = course
    end
end

class RegularStudent < Student
    include Roomable
end

denno = RegularStudent.new("Dennot8", 30, "AI&ML")

puts denno.assign_bed
puts $in_house.inspect

