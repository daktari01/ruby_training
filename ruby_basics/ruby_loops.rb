## Ruby while loop
# Executes code while conditional is true.
# A while loop's conditional is separated from code by the reserved word 'do', a newline,
# backslash \, or semicolon ;.
$i = 0
$num = 5
 while $i < $num do
     puts "Inside the loop, i = #$i"
     $i += 1
 end
 
## Ruby while modifier
$i = 0
$num = 5
 begin
    puts "Inside the loop, i is #$i"
    $i += 1
 end while $i < $num
 
## Ruby for statement
for i in 0..5 do
    puts "Value of local variable is #{i}"
end

(0..5).each do |i|
    puts "Value of local variable i is #{i}"
end


## Ruby break statement
# Terminates the most internal loop
for i in 0..5
    if i > 2 then
        break
    end
    puts "Value of local variable is: #{i}"
end


## Ruby next statement
# Jumps to the next iteration of the most internal loop
for i in 0..5
    if i < 2 then
        next
    end
    puts "Value of local variable is #{i}"
end


## Ruby redo statement
# Restarts the iteration of the most internal loop,
# without checking the loop condition
for i in 0..5
    if i < 2 then
        puts "Value of local variable is #{i}"
        redo
    end
end