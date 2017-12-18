puts "Hello Ruby!"

## Heredoc in Ruby
print <<EOF
        This is the first way of creating
        here document i.e multiple line string.
EOF
print <<"EOF"; # same as above
        This is the second way of creating 
        here document i.e multiple line string.
EOF
print <<`EOC` # execute commands
        echo hi there
        echo lo there
EOC
print <<"foo", <<"bar"  # they can be stacked
        I said foo
foo
        I said bar
bar

## Ruby BEGIN statement
# Declares code to be called before program is run
puts "This is the main Ruby Program"

BEGIN {
    puts "Initializing Ruby Program"
}

## Ruby END statement
# Declares code to be called at the end of the program
puts "This is the main Ruby Program yawa"
END {
    puts "Terminating Ruby Program"
}
BEGIN {
    puts "Omera, we are initializing Ruby Program"
}