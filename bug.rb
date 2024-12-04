```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.instance_variable_set(:@value, 20)
puts my_object.value #=> 20

# Unexpected behavior
my_object.value = 30 # No error, but no effect
puts my_object.value #=> 20
```