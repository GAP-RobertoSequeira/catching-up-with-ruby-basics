# Enumerators hold the information about how to iterate a collection
# according to the method I use to create the enumerator
# Ex: each, each_with_index, each_with_object, each.with_index, map, collect, reduce

arr = [1, 2, 3, 4, 5]

# map returns a enumerator
enum = arr.map

p enum.size     # 5
p enum.next     # 1
p enum.peek     # 2
p enum.next     # 2

enum.rewind
p enum.next     # 1

enum.rewind
p enum.each {|item| item * 2 }    # [2, 4, 6, 8, 10]

# enumerators can be chained in order to combine its functionality
enum = arr.each
enum = enum.with_index

enum.each {|e, i| p [i, e]}       # [0, 1] [1, 2] [2, 3] [3, 4] [4, 5]

