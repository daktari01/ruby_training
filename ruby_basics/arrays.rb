# Instantiating an array
names = Array.new
 # Setting the size of the array
 names = Array.new(20)
 
 puts names.size # Returns 20
 puts names.length # Also returns 20
 
 # Assign a value to each element
 names = Array.new(4, "mac")
 puts "#{names}"
 
 # You can use a block with new, polulating each element with what the block evaluates to
 nums = Array.new(10) {|e| e = e * 2}
 puts "#{nums}"
 
 # Another way to instantiate an array
 nums = Array.[](1, 2, 3, 4, 5)
 
 # Or like this
 nums = Array[1, 2, 3, 4, 5]
 
 # Or like this for ranges
 digits = Array(0..9)
 puts "#{digits}"
 
 num = digits.at(5)
 print "#{num}\n"