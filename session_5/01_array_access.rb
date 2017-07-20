###################################
# Accessing elements
###################################

arr = [1, 2, 3, 4, 5, 6, 7, 8]

p arr[2, 4]             # [3, 4, 5, 6] - four elements starting at index 2

p arr[-4, 2]            # [5, 6] - two elements starting at index -4

p arr[1..3]             # [2, 3, 4] - indexes 1, 2 and 3

p arr[3..-3]            # [4, 5, 6] - negative index starts counting from the end of the array

p arr[-3..-1]           # [6, 7, 8] - negative index starts counting from the end of the array

puts arr.at(2)          # 3

puts arr.first          # 1

puts arr.last           # 8

p arr.take(2)         # [1, 2]
