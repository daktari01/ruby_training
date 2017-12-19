## Ruby Dot "." and Double Colon "::" Operators
# A module method is called by preceding its name with the module's name and a period.
# You reference a constant using the module name and two colons
 # The :: is a unary operator that allows constants, instance methods and class methods defined
 # defined within a class or a module, to be accessed anywhere from within a class or module.
 
 MR_COUNT = 0  # Constant defined on main object class
 module Foo
    MR_COUNT = 0
    ::MR_COUNT = 1  # Set global count to 1
    MR_COUNT = 2  # Set local count to 2
 end
 puts MR_COUNT  # This is the global constant
 puts Foo::MR_COUNT  # This is the local "Foo" constant
 
 CONST = ' out there'
 class Inside_one
     CONST = proc{' in there'}
     def where_is_my_CONST
         ::CONST + ' inside one'
     end
 end
 class Inside_two
     CONST = ' inside two'
     def where_is_my_CONST
         CONST
     end
 end
 
 puts Inside_one.new.where_is_my_CONST  # 'out there inside one'
 puts Inside_two.new.where_is_my_CONST # ' inside two'
 puts Object::CONST + Inside_two::CONST # 'out there inside two'
 puts Inside_two::CONST + CONST # 'inside two out there'
 puts Inside_one::CONST # '#<Proc:0x000000013a6bb8@ruby_operators.rb:18>'
 puts Inside_one::CONST.call # 'in there'
 puts Inside_one::CONST.call + Inside_two::CONST # 'in there inside two'
 
 