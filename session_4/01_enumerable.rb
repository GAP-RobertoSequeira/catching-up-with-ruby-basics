puts '.map .collect'

arr = [1, 3, 4, 2, 5]
p arr.map { |n| n*2 }             # [2, 6, 8, 4, 10]
p arr.collect { |n| n*2 }         # [2, 6, 8, 4, 10]

puts '.flat_map'

p arr.flat_map { |n| [n, -n] }    # [1, -1, 3, -3, 4, -4, 2, -2, 5, -5]

puts '.all?'

puts arr.all? { |n| n.even? }     # false
puts arr.all?(&:even?)            # false

puts '.any?'

puts arr.any? { |n| n.even? }     # true
puts arr.any?(&:even?)            # true


puts '.none?'

arr = [1, 2, 3, 4]
puts arr.none? { |v| v >= 5 }      # true
puts arr.none? { |v| v >= 4 }      # false

puts '.one?'

puts arr.one? { |v| v >= 4 }       # true
puts arr.one? { |v| v >= 3 }       # false

puts '.include? .member?'

arr = %w(a b c)
puts arr.include?('a')                  # true
puts arr.member?('a')                   # true
puts ({ a: 'a', b: 'b'}.include?(:a))   # true

puts '.each_cons'

arr = [1, 3, 4, 2, 5]
arr.each_cons(3){|g| p g}             # [1, 3, 4] [3, 4, 2] [4, 2, 5]

puts '.count'

puts arr.count                        # 5
puts arr.count(3)                     # 1
puts arr.count{ |n| n.even? }         # 2

puts '.cycle'

arr.cycle(2) {|n| p n}                # 1 3 4 2 5 1 3 4 2 5
(1..2).cycle(2) {|n| p n}             # 1 2 1 2

puts '.max'

arr = %w(hello foo test var array)
puts arr.max                                    # var
puts arr.max { |a, b| a.length <=> b.length }   # hello

puts '.max_by'

puts arr.max_by { |w| w.length }      # hello
puts arr.max_by(&:length)             # hello

puts '.min .minmax'

puts arr.min                          # array
p arr.minmax                          # ["array", "var"]

puts '.each_slice'

arr = %w(a b c d e f g)
arr.each_slice(3) { |slice| p slice }     # ["a", "b", "c"] ["d", "e", "f"] ["g"]

puts '.each_with_index'

arr = %w(a b)
arr.each_with_index { |item, index| p [item, index]}    # ["a", 0] ["b", 1]

puts '.each_with_object'

p arr.each_with_object({}) { |v, a| a[v] = v }          # {"a"=>"a", "b"=>"b"}
p arr.each_with_object([]) { |v, a| a << v }            # ["a", "b"]

puts '.reduce'

p arr.reduce({}) { |a, v| a[v] = v; a }                 # {"a"=>"a", "b"=>"b"}

puts '.partition'

p (1..8).partition { |v| v.even? }                      # [[2, 4, 6, 8], [1, 3, 5, 7]]
p (1..8).partition(&:even?)                             # [[2, 4, 6, 8], [1, 3, 5, 7]]

puts '.find detect'

arr = [1, 3, 4, 2, 5]
puts arr.find {|n| n.even? }          # 4
puts arr.find(&:even?)                # 4
puts arr.detect { |n| n.even? }       # 4

puts '.select .find_all'

p arr.select { |n| n.even? }          # [4, 2]
p arr.select(&:even?)                 # [4,2]
p arr.find_all { |n| n.even? }        # [4, 2]

puts '.reject'

p arr.reject { |n| n.even?}           # [1, 3, 5]

puts '.find_index'

arr = %w(a b c d)
puts arr.find_index('b')              # 1
puts arr.find_index {|v| v == 'b'}    # 1

arr = [1, 3, 4, 2, 5]

puts '.sort'
p arr.sort                            # [1, 2, 3, 4, 5]
p arr.sort { |a, b| a <=> b }         # [1, 2, 3, 4, 5]
p arr.sort { |a, b| b <=> a }         # [5, 4, 3, 2, 1]

puts '.sort_by'

arr = %w(hello foo test var array)
p arr.sort_by { |w| w.length }        # ["var", "foo", "test", "hello", "array"]
p arr.sort_by(&:length)               # ["var", "foo", "test", "hello", "array"]
