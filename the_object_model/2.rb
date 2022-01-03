=begin

A module is a set of methods that can be "mixed in" to a class to extend the
functionality of a class. Modules are useful because they add polymorphism, by
allowing multiple classes to implement the same behavior in a reusable fashion.

In Ruby, we use them with our classes by adding them with `include` method.

=end

module Behaviors
  def move
    puts "it moved"
  end
end

class Dog
  include Behaviors
end

dog = Dog.new
dog.move
