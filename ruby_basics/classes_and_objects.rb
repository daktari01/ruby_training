=begin
Variables in Ruby
-----------------
Local variables - Variables defined in a method. Are not available outside the 
    method
Instance variables - Are available across methods for any particluar instance or object.
    They change from object to object. They are preceded by the sign (@) followed by the variable name
Class variables - Available across different objects. A class variable belongs to the class and is a 
    characteristic of a class. They are preceded by the sigh @@ follwed by the variable name
Global variables - Variables across classes. They are prededed by ($) followed by the variable
    name.
=end

class Customer
    @@no_of_customers = 0
end

## Creating methods in Ruby using `new` method
# Objects are instances of a class
# The method `new` is a unique type of method predefined in Ruby library. 
# The `new` method belongs to the class methods

cust1 = Customer. new
cust2 = Customer. new

## Custom method to create Ruby objects
class Student
    @@no_of_students = 0
    def initialize(id, name, addr)
        @stud_id = id
        @stud_name = name
        @stud_addr = addr
    end
end

stud1 = Student.new("1", "John", "Ongwaro stage mpya")
stud2 = Student.new("2", "Cleah", "Pipeline duka moja")

## Ruby Methods
class Sample
    def function
        statement 1
        statement 2
    end
end

class Sampler
    def hello
        puts "Hello, Ruby"
    end
end

object = Sampler.new
object.hello



