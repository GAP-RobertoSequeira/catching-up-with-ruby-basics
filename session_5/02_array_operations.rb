###################################
# Operations with arrays
###################################

# append

arr = [1, 2]
p arr << 'a'                        # [1, 2, "a"]

# repetition

p [1, 2] * 3                        # [1, 2, 1, 2, 1, 2]

# concatenation

p [1, 2] + [3, 4]                   # [1, 2, 3, 4]

# difference

p [1, 2, 3, 4, 2, 5] - [2, 5]       # [1, 3, 4]

# intersection

p %w(a b c d e c) & %w(b c f)       # ["b", "c"]

# union

p %w(a b c d) | %w(b d f g)         # ["a", "b", "c", "d", "f", "g"]


p [1, 2] * ', '                     # "1, 2" - Similar to join
