# Ruby Accessor Assignment Bug

This repository demonstrates an uncommon bug in Ruby related to assigning values to accessor methods without explicitly defining a writer method.  In Ruby, if you only define a `getter` method (like `value` in the example), directly assigning a value to it will not modify the instance variable.  This can lead to silent errors and unexpected behavior in your code. The solution shows how to define a `setter` method (`value=`) to properly modify the instance variable.

## Bug Report:
The bug occurs when attempting to directly assign a value to an accessor method that only has a getter method defined. The assignment doesn't raise an error, but it also doesn't change the internal state of the object. This silent failure can be difficult to debug.

## How to Reproduce:
Clone this repository, and run the `bug.rb` script. Observe the unexpected behavior where `my_object.value = 30` does not change the value.