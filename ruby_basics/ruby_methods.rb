## Variable number of parameters
def sample(*test)
    puts "The number of parameters is #{test.length}"
    for i in 0...test.length
        puts "Parameter number #{i+1} is: #{test[i]}"
    end
end

sample "zebra", "6", "F"
sample "Mac", "43", "M", "MCA"