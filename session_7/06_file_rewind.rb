###################################
# File rewind
###################################

my_file = 'files/file.txt'

# rewind file
File.open(my_file) do |file|
  file.each {|line| puts line}
  file.rewind
  puts '--------------------------------'
  file.each_line {|line| puts line}
end
puts

File.foreach(my_file) do |line|
  puts line
end
