class Vehicle
    attr_accessor :make, :wheels, :doors,  :weight
    
    @@vehicles = 0
    
    def initialize(make, wheels=4, doors=4, weight="Max")
        @make = make
        @wheels = wheels
        @doors = doors
        @weight = weight
        
        @@vehicles += 1
    end
    
    def self.counter
        "Current no. of vehicles: #{@@vehicles}"
    end

    def info
        @info = {:make=>@make, :wheels=>@wheels, :doors=>@doors}
    end
end

class MyCar < Vehicle
end

class MyTruck < Vehicle
end

subaru = MyCar.new("Subru", 4, 5)
euro = MyTruck.new("Actros", 18, 3)
puts subaru.info
puts euro.info

puts Vehicle.counter