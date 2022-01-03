class Vehicle
  attr_accessor :color
  attr_reader :year, :model, :speed

  @@num_vehicles = 0

  def initialize(year, color, model)
    @@num_vehicles += 1
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  # Class Methods

  def self.gas_mileage(miles, gallons)
    miles / gallons
  end

  def self.print_num_vehicles
    puts @@num_vehicles
  end

  # Custom Accessors

  def spray_paint(color)
    self.color = color
    puts "The vehicle is now painted #{color}"
  end

  # Instance methods

  def speed_up
    @speed += 10
  end

  def brake
    new_speed = speed - 10
    new_speed < 0 ? @speed = 10 : @speed = new_speed
  end

  def shut_off
    @speed = 0
  end

  def age
    puts "The age of the #{self.model} is #{calculate_age} years"
  end

  private

  def calculate_age
    Time.now.year - self.year
  end
end

module Loadable
  def load(num_items)
    puts "Loading the back of the vehicle with #{num_items} items"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{color} #{year} #{model} traveling #{speed} mph."
  end
end

class MyTruck < Vehicle
  include Loadable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{color} #{year} #{model} traveling #{speed} mph."
  end
end

car = MyCar.new(2010, "grey", "Toyota Venza")
truck = MyTruck.new(2013, "black", "Toyota Tundra")

Vehicle.print_num_vehicles
truck.load(10)

p Vehicle.ancestors # => [Vehicle, Object...]
p MyCar.ancestors # => [MyCar, Vehicle, Object...]
p MyTruck.ancestors # => [MyTruck, Loadable, Vehicle, Object...]

car.spray_paint("red")
puts car
car.speed_up
puts car
car.brake
puts car
car.shut_off
puts car

truck.spray_paint("red")
puts truck
truck.speed_up
puts truck
truck.brake
puts truck
truck.shut_off
puts truck

car.age
truck.age
