## Getting current date and time
time1 = Time.new
puts "Current Time1: " + time1.inspect

# Time.now is a synonym
time2 = Time.now
puts "Current time2: " + time2.inspect


## Time.utc, Time.gm and Time.local Functions
# The above functions can be used to format date in a standard format as follows:
# July 8, 2008
Time.local(2008, 7, 8)

# July 8, 2008, 09:10am, local time
Time.local(2008, 7, 8, 9, 10)

# July 8, 2008, 09:10 UTC
Time.utc(2008, 7, 8, 9, 10)

# July 8, 2008, 09:10 GMT (same as UTC)
Time.gm(2008, 7, 8, 9, 10, 11)

time = Time.new
values = time.to_a
p values

# The above array could be passed to Time.utc or Time.local functions to get different formatsof dates as follows
time = Time.new
values = time.to_a
puts Time.utc(*values)
# 2017-12-21 13:39:10 UTC

# Following is the way to get time represented internally as seconds since the (platform-independent) epoch
# Returns number of seconds since epoch
time = Time.now.to_i

# Convert number of seconds into Time object
Time.at(time)

# Returns second since epoch which includes microseconds
time = Time.now.to_f