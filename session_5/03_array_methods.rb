###################################
# Array methods
###################################

arr = %w(a b c d)

puts arr.size                     # 4

puts arr.empty?                   # false
puts arr.any?                     # true

p arr.push('1')                   # ["a", "b", "c", "d", "1"]
p arr.pop                         # "1"

p arr.unshift('0')                # [0, "a", "b", "c", "d", "1"]
p arr.shift                       # "0"

p arr.combination(3).to_a         # [["a", "b", "c"], ["a", "b", "d"], ["a", "c", "d"], ["b", "c", "d"]]

arr = %w(a b c d)

p arr.concat(%w(e f g))           # ["a", "b", "c", "d", "e", "f", "g"]

p ['a', nil, 'c', nil].compact    # ["a", "c"]

p ['a', ['b', 'c'], 'd'].flatten  # ["a", "b", "c", "d"]

p arr.select {|c| c >= 'd'}       # ["d", "e", "f", "g"]
p arr.reject {|c| c >= 'd'}       # ["a", "b", "c"]
