###################################
# Accessing elements
###################################

h = {a: 'a', b: 'b'}

puts h[:a]                      # a

p h.keys                        # [:a, :b]
p h.values                      # ["a", "b"]

puts h.has_key?(:a)             # true
puts h.key?(:a)                 # true

puts h.has_value?('a')          # true
puts h.value?('b')              # true

puts h.include?(:a)             # true
puts h.member?(:a)              # true


