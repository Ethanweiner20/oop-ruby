# Difference from regular classes: Has an interface that describes all behaviors
# of the car (rather than just basic getter/setter names)

class MyCar
  attr_accessor :color
  attr_reader :year, :model, :speed

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  # Class Methods

  def self.gas_mileage(miles, gallons)
    miles / gallons
  end

  # Custom Accessors

  def spray_paint(color)
    self.color = color
    puts "The car is now painted #{color}"
  end

  # Instance methods

  def speed_up
    # @speed += 10 <== Bad practice
    @speed += 10
  end

  def brake
    new_speed = speed - 10
    new_speed < 0 ? @speed = 10 : @speed = new_speed
  end

  def shut_off
    @speed = 0
  end

  def to_s
    "#{year} #{color} #{model} currently driving #{speed} mph"
  end
end

car = MyCar.new(2010, "Grey", "Venza")
puts car

# p car.speed
# car.speed_up
# p car.speed
# car.speed_up
# p car.speed
# car.brake
# p car.speed
# car.brake
# car.brake
# car.brake
# p car.speed
# car.speed_up
# car.shut_off
# p car.speed