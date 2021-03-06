class Point
    attr_accessor :x, :y
    def initialize(x, y)
        @x, @y = x, y
    end

    def to_s
        "(#{@x}, #{@y})"
    end

    def vector_add(b) # with type-checking to properly flag 
        # duck-typing
        # duck-typing: "looks like a duck, quacks like a 
        # duck, issa duck"
        raise TypeError, "b must be a point, 
        with (x, y) cordinates" unless b.is_a? Point
        Point.new(@x+b.x, @y+b.y)
    end

    def self.sum(*points) # Enumerating the points so created
        x = y = 0
        points.each {|point| x += point.x; y += point.y}
        self
        self.new(x, y)    
    end
end

class PointTu < Point
    def vector_add
        puts "Issa wrap"
    end
end

module Roomable
    def assign_room(name, hall)
        puts "#{name} assigned to #{hall}"
    
end

PointTu.new(1,1).vector_add

# here = Point.new(0, 0)
# puts here.is_a? Point
# puts here 
# puts
# b = Point.new(11, 12)
# c = Point.new(b.x*2, b.y+15)
# d = c.vector_add(b)
# puts b.to_s, c.to_s, d.to_s
# puts "Kujaribu tu"
# puts Point.sum(here, b, c, d)
# puts