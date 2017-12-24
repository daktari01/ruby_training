# Ranges can be used as:
    # Sequences
    # Conditions
    # Intervals

## Ranges and Sequences
(1..5) #==> 1, 2, 3, 4, 5
(1...5) #==> 1, 2, 3 , 4
('a'..'d') #==> 'a', 'b', 'c', 'd'

# The sequence 1..100 is held as a Range object containing reference to two Fixnum objects
# If you need to, you can convert a range to a list using the to_a method.
$, = ", "  # Array value separator
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"

# Assume a range
digits = (0..9)
puts digits.include?(5)
ret = digits.min
puts "Minimunm value is #{ret}"

ret = digits.max
puts "Maximum value is #{ret}"

ret = digits.reject {|i| i < 5}
puts "Accepted values are #{ret}"

digits.each do |digit|
    puts "In Loop #{digit}"
end

## Ranges and conditions
score = 70
result = case score
    when 0..40 then "Fail"
    when 41..60 then "Pass"
    when 61..70 then "Pass with Merit"
    when 71..100 then "Pass with Distinction"
    else "Invalid score"
end

puts result


## Ranges as intervals
if((1..10) === 5)
    puts "5 lies in range 1-10."
end
if (('a'..'j') === 'c')
    puts "c lies in range 'a'-'j'."
end