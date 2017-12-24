## Instance method
# Instance valriables are kind of class attributes which become properties 
# of objects once objects are created using the class.
# They are accessed using @ operator in a class, but to access them outside
# the class, we use public methods, which are called accessor methods.

class Boxer
    def initialize(w, h)
        # assign instance variables
        @width, @height = w, h
    end
end

# @width and @height are instance methods. They are not accessible to children classes

## The accessor and setter methods
#  To make the variables available from outside the class, they must be defined within
# accessor methods: also known as getter methods.
class Box
    # constructor method
    def initialize(w, h)
        @width, @height = w, h
    end
    
    # accessor methods
    def printWidth
        @width
    end
    def printHeight
        @height
    end
end

# create an object
box = Box.new(10, 20)

# use accessor methods
x = box.printWidth
y = box.printHeight

puts "Width of the box is #{x}"
puts "Height of the box is #{y}"

# Ruby provides a way in which to set values to instance methods from outside
# of the class using setter methods.
class Boxi
    # constructor method
    def initialize(w, h)
        @width, @height = w, h
    end
    
    # accessor methods
    def getWidth
        @width
    end
    def getHeight
        @height
    end
    
    # setter methods
    def setWidth(value)
        @width = value
    end
    def setHeight(value)
        @height = value
    end
end

# create an object
boxi = Boxi.new(26, 74)

# Use setter method
boxi.setWidth(59)
boxi.setHeight(67)

# Use getter methods
a = boxi.getWidth
b = boxi.getHeight

puts "Width of the box after setter is #{a}"
puts "Height of the box after setter is #{b}"


## The Instance Methods
# They are also defined like any other method using the def keyword but can be used
# with a class instance only.
# Their functionality is not limited to access the instance variables, but can also
# do a lot more as per one's requirement
class Boxa
    # constructor method
    def initialize(w, h)
        @width, @height = w, h 
    end
    # instance method
    def getArea
        @width * @height
    end
end

# create an object
boxa = Boxa.new(28, 62)

# call instance method
area = boxa.getArea()
puts "Area of the box is : #{area}"


## Class methods and variables
# Class variables are shared between all instances of a class
# They are prefixed with @@ and must be initialized within a class definition.

# A class method is defined using def self.methodname() and is called
# using a class name as classname.methodname
class Boax
    @@count = 0
    def initialize(w, h)
        # assign variables
        @width, @height = w, h
        @@count += 1
    end
    def self.printCount()
        puts "Boax count is #@@count"
    end
end

# create two objects
boax1 = Boax.new(39, 28)
boax2 = Boax.new(11, 35)

# call clss method to print boax count
Boax.printCount()


## The to_s method
# Any class defined shouldhave a two_ method to define a string 
# representation of the object
class Bexi
    # constructor method
    def initialize(w, h)
        @width, @height = w, h
    end
    # define to_s method
    def to_s
        "(w:#@width,h:#@height)" # string formatting of the object
    end
end

# create an object
bexi = Bexi.new(13, 24)

# to_s method will be called in referrence of string automatically
puts "String representation of box is #{bexi}"


## Access Control
class Poxie
    # initialize method
    def initialize(w, h)
        @width, @height = w, h
    end
    # instance method by deafult is public
    def getArea
        getWidth() * getHeight
    end
    # define private accessor methods
    def getWidth
        @width
    end
    def getHeight
        @height
    end
    # make them private
    private :getWidth, :getHeight
    # instance method to print area
    def printArea
        @area = getWidth() * getHeight
        puts "Big boxie area is: #{@area}"
    end
    # make it protected
    protected :printArea
end

# create an object
poxie = Poxie.new(38, 75)

# call instance methods
a = poxie.getArea
puts "Area of the box is #{a}"

# try to call protected or private methods
poxie.printArea


## Class inheritance
# Ruby does not support multiple levels of inheritance but Ruby support mixins
# A mixin is a specialized implementation of multiple inheritance in which only
# the interface portionis inherited.
class Boxy
    # initialize method
    def initialize(w, h)
        @width, @height = w, h
    end
    # instance method
    def getArea
        @width * @height
    end
end

# define a subclass
class BigBox < Boxy
    # add a new instance method
    def printArea
        @area = @width * @height
        puts "Big box area is: #{@area}"
    end
end

# create object
biggie = BigBox.new(28, 62)

# print area
biggie.printArea

