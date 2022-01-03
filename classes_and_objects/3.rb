=begin

We get this error because no setter method is defined for the `Person` class.
On line 9, Ruby attempts to invoke a `name=` setter method for the `bob` object
which doesn't exist. `attr_reader` is invoked, but it only creates a getter
method for `@name`, not a setter.

There are two options to fix this:
- Create a setter method for `@name` using the `attr_writer` or `attr_accessor`
method with the symbol `:name`
- Explicitly define a setter method called `name=` that accepts a parameter

=end

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"