=begin

`hi` is defined in the `Person` class as a private method, meaning it is
accessible only from within the `Person` class definition. The code attempts to
invoke this private method `hi` outside of the class definition.

To fix it, we change `hi` from a private to public method. We'd move the `hi`
method above the `private` method call in the `Person` class.

=end