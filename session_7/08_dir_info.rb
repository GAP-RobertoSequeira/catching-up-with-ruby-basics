###################################
# Dir info
###################################

# print working directory
puts Dir.pwd
puts Dir.getwd

# change working directory
Dir.chdir('files')
puts Dir.pwd

Dir.chdir('..')
puts Dir.pwd

# if a block is specified original working directory is restored
# when block ends
Dir.chdir('..') do
  puts Dir.pwd
end
puts Dir.pwd
