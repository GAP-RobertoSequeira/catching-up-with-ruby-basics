###################################
# File read
###################################

my_file = 'files/file.txt'

# reading file content
# file is closed automatically when a block is specified
File.open(my_file).each do |line|
  puts line
end

File.open(my_file) do |file|
  file.each { |l| puts l}
end

# reading file content all at once
file = File.open(my_file)
puts file.read
file.close

puts File.read(my_file)

# getting an array with lines in file
file = File.open(my_file)
lines = file.readlines
puts lines[0]
file.close

lines = File.readlines(my_file)
puts lines[1]
