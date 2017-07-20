###################################
# File validations
###################################

my_directory = 'files'
my_file = 'files/file.txt'

puts File.file?(my_file)                # true
puts File.file?(my_directory)           # false

puts File.directory?(my_file)           # false
puts File.directory?(my_directory)      # true

puts File.exist?(my_file)               # true
puts File.exist?(my_directory)          # true

puts File.ftype(my_file)                # file
puts File.ftype(my_directory)           # directory
