# A block consists of chunks of code, and must have a name
# Code in blocks is always enclosed within braces ({})
# A block is usually invoked from a function, with the same name as that of the block.
# This means; if you have a block with the name test, then you use the function test to invoke this block.
# A block is invoked using the yield statement

def test
    puts "You are now in the method"
    yield
    puts "You are again back to the method"
    yield
end

test {
    puts "You are in the block"
    puts 362 ** 2
}


## You can also pass a parameter wuth the yield statement
def test
    yield 5
    puts "You are in the method test"
    yield 100
end

test{
    |i| puts "You are in the block #{i}"
}

## Blocks and methods
# if the last argument of a method is preceded by &, 
# then you can pass a block to this method and it will be assigned to the last parameter.
# In case both * and & are present in the argument list, & should come later
def testie(&block)
    block.call
end

testie {puts "Hello world!"}