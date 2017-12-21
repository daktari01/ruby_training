# Modules are a way of grouping together methods, classes and constants
# Modules give two major benefits: 
    # =>They provide a namespace and prevent name clashes
    # =>They implement the mixin facility

module Trig
    PI = 3.141592654
    def Trig.sin(x)
        # ...
    end
    def Trig.cos(x)
        # ...
    end
end

# We can define one more module with the same function name but different functionality
module Moral
    VERY_BAD = 0
    BAD = 1
    def Moral.sin(badness)
        # ...
    end
end

# Like class methods, whenever you define a method in a module, you specify 
# the module name followed by a dot and then the method name

$LOAD_PATH << '.'
require "trig"
require "moral"

## Ruby Include Statement
# A module can be embedded in a class, by using the include statement in the class
# If a module is defined in a separate file, then it is required to include that file 
# using require statement before embedding module in class

$LOAD_PATH << '.'
require "ruby_syntax"

class Decade
include Week
    no_of_yrs = 10
    def no_of_months
        puts Week::FIRST_DAY
        number = 10 * 12
        puts number
    end
end
d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months


## Mixins in Ruby
# Mixins give a wonderfully controlled way of adding functionality to classes
# Their true power comes out when the code in the mixin starts to interact with code
# in the class that uses it.