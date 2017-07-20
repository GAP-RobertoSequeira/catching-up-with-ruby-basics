###################################
# Array declaration
###################################

p Array.new                             # []
p Array.new(3)                          # [nil, nil, nil]
p Array.new(3, true)                    # [true, true, true]

p Array.new(3, Array.new(2))            # [[nil, nil], [nil, nil], [nil, nil]]

p %w( a b c)                            # ["a", "b", "c"]
p %W( a b #{'f'})                       # ["a", "b", "f"]

# an array can store elements of different types

p [1, 'Developer', :foo]                # [1, "Developer", :foo]

# arrays store references to the objects

p arr = Array.new(3, 'hello')           # ["hello", "hello", "hello"]
arr.first.upcase!
p arr                                   # ["HELLO", "HELLO", "HELLO"]

p arr = Array.new(3) { 'abc' }          # ["abc", "abc", "abc"]
arr.last.upcase!
p arr                                   # ["abc", "abc", "ABC"]
