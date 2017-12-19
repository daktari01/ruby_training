x = 1
if x > 2
    puts "x is greater than 2!"
elsif x <= 2 and x != 0
    puts "x is 1"
else
    puts "I can't guess the number!"
end

## Ruby if modoifier
# Executes code if conditional is true
$debug = 1
print "debug\n" if $debug

## Ruby unless statement
x = 1
unless x >= 2
    puts "x is less than 2"
else
    puts "x is greater than 2"
end
    
    
## Ruby case statement
$age = 5
case $age
when 0..2
    puts "Baby"
when 3..6
    puts "Little child"
when 7..12
    puts "Child"
when 13..18
    puts "Youth"
else
    puts "Adult"
end