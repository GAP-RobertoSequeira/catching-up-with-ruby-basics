##########################################################################
# In reduce the accumulator is passed by value
# and the result from the block execution is passed to the next iteration
##########################################################################
p [1, 2, 3].reduce(:+)

# in (m << v * 2) the <<  operator returns the updated array
# and that's was passed as accumulator to the next iteration
# so it works because the block always returns an array
p [1, 2, 3].reduce([]) {|m, v| m << v * 2 }

# but if we use a hash as accumulator the code does not work because
# in (m[v] = v) the = operator returns the inserted value
# so for next iteration we don't have a hash any more
# and what we have is a string, integer or whatever
# was the last value we added to the hash

# DOES NOT WORK
# p [1, 2, 3].reduce({}) {|m, v| m[v] = v }

# WORKAROUND: make sure the hash is returned at the end of the block
p [1, 2, 3].reduce({}) {|m, v| m[v] = v; m}

##########################################################################
# Or you better user each with object to avoid additional
# instances being created
#
# In each_with_object the accumulator is passed by reference
# that why no matter what the = operator in (m[v] = v) returns
# the hash m gets updated
##########################################################################

p [1, 2, 3].each_with_object({}) {|v, m| m[v] = v }
