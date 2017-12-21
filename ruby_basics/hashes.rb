# Creates a hash with a default value, which is nil
months = Hash.new("month")

H = Hash["a" => 100, "b" => 200]

puts "#{H['a']}"
puts "#{H['b']}"

# Any Ruby object can be used as a key or value, even an array such as;
# [1, "jan"] => "January"


## Hash Built-in Methods
# We need an instance of Hash object to call a hash method. 
# The following is the way to create an instance of Hash object
$, = ", "
months = Hash.new("month")
months = {"1" => "January", "2" => "February"}

puts months.keys
puts "#{months.keys}"
keys = months.keys
puts "#{keys}"