###################################
# Dir files
###################################

my_dir = 'files'
dir = Dir.new(my_dir)

# read entry by entry
puts dir.read
puts dir.read
puts dir.read

# move to the beginning of the dir
dir.rewind

puts dir.read                   # file.txt

puts "\n##########\n\n"

dir = Dir.new(my_dir)

# current position in dir
puts dir.tell
puts dir.read

puts position = dir.tell
puts dir.read

# Seeks to a particular position in the dir
dir.seek(position)
puts dir.read
