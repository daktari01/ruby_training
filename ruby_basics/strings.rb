## General delimited strings
# With general delimited strings, you can create strings inside a pair of matching though arbitrary
# delimiter xters eg !, (, {, <, etc preceded by a % character.
# Q, q, and x have special meanings.

%{Ruby is fun.} 
# equivalent to
"Ruby is fun."

%Q{ Ruby is fun. }
# equivalent to
" Ruby is fun. "

%q[Ruby is fun.]
# equivalent to a single quoted string

%x!ls!
# equvalent to back tick command output `ls`

## String Built-n Methods
# We need to have an instance of String object to call a String method.
# Following is the way to create an instance of String object

new [String.new(str="")]

# The above will return a new string object containing a copy of str.
# Using str object, we can all use any available instance methods.
# Example:
myStr = String.new("THIS IS TEST")
foo = myStr.downcase

puts "#{foo}"

# Produces the result: this is test