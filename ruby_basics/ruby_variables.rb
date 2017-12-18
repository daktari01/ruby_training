## Global variables
$global_variable = 10
class Class1
    def print_global
        puts "Global variable in Class1 is #$global_variable"
    end
end
class Class2
    def print_global
        puts "Global variable in Class2 is #$global_variable"
    end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

# $global_variable is a global variable
# In Ruby, you can access value of any variable or constant by putting a hash(#)
# character just before that variable or constant


## Ruby Instance variables
# They begin with @
# Unitialized instance variables have the value nil and produce warnings with the -w option
class Customer
    def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
    end
    def display_details()
        puts "Customer id: #@cust_id"
        puts "Customer name: #@cust_name"
        puts "Customer address: #@cust_addr"
    end
end

# create objects
cust1 = Customer.new("14", "Morris", "Jumangira apartments, Athi River")
cust2 = Customer.new("86", "Chiloba", "Kwandege, Fedha")

# call methods
cust1.display_details()
cust2.display_details()


## Ruby class variables
# Begin with @@ and must be initialized before they can be used in method definitions
# Referrencing an uninitialized class variable produces an error.
# Class variables are shared among descendants of the class or module in which the class variables are defined
# Overriding class variables produce warnings with the -w option
class Tenant
    @@no_of_tenants = 0
    def initialize(id, name, addr)
        @tena_id = id
        @tena_name = name
        @tena_addr = addr
    end
    def display_details()
        puts "Tenant id: #@tena_id"
        puts "Tenant name: #@tena_name"
        puts "Tenant address: #@tena_addr"
    end
    def total_no_of_tenants()
        @@no_of_tenants += 1
        puts "Total number of tenants: #@@no_of_tenants"
    end
end

# create objects
tena1 = Tenant.new("34", "Kenga", "Tajmall, Embakasi")
tena2 = Tenant.new("69", "Mercy", "Opposite Nairobi West Hospital, Nairobi West")

# call the methods
tena1.total_no_of_tenants()
tena2.total_no_of_tenants()

# id, name and addr are local variables

## Ruby Constants
# Constants begin with an uppercase letter.
# Constants defined within a class or module can be accessed from within that class or module,
# and those defined outside a class can be accessed globally.
# Constants may not be defined within methods.
# Referrencing an uninitialized constant produces an error.
# Making an assignment to a constant that is already initialized produces a warning
class Example
    VAR1 = 100
    VAR2 = 200
    def show
        puts "Value of first constant is: #{VAR1}"
        puts "Value of second constant is: #{VAR2}"
    end
end

# create objects
object = Example.new()
object.show


## Ruby Pseudo-Variables
# They are special variables that have the appearance of local variables but behave like constants
# They cannot be assigned to any value

# self - The receiver object of the current method
# true - Value representing true
# false - Value representing false
# nil - Value representing undefined
# __FILE__ - The name of the current source file
# __LINE__ - The current line number in the source file


## Strings
# You can substitute the value of any Ruby expression into a string using the sequence #{ expr }
# Here, expr could be any Ruby expression
puts "Multiplication value: #{24*60*60}"


## Ruby Arrays
# Created by placing comma separated series of object references between the square brackets. 
# A trailing comma is ignored
ary = ["fred", 10, 3.14, "This is a string", "last element",]
ary.each do |i|
    puts i
end


## Ruby Hashes
# Created by placing a list of key/value pairs between braces, with either comma or 
# the sequence => between the key and the value.
# A trailing comma is ignored
hsh = colors = {"red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}
hsh.each do |key, value|
    print key, " is ", value , "\n"
end


## Ruby Ranges
# A range represents an interval; a set of values with a start and an end.
# Ranges may be constructed using the s..e and s...e literals, or with Range.new.
# Ranges constructed with .. run from start to end inclusively
# Those created with ... exclude the end value
# A range (1..5) means it includes 1, 2, 3, 4, 5 values and a range (1...5) means
# it includes 1, 2, 3, 4 values
(10..15).each do |n|
    print n, ' '
end