###################################
# Dir entries
###################################

files_dir = 'files'

# list directory entries
p Dir.entries(files_dir)

# iterate over directory entries

Dir.foreach(files_dir) { |entry| puts entry}

Dir.new(files_dir).each { |entry| puts entry}

# home directory for current user
puts Dir.home

# create a new directory
Dir.mkdir('my_dir')

# delete a directory
# Throws an exception if the directory is non empty
Dir.delete('my_dir')

p Dir.exist?(files_dir)              # true
p Dir.exist?('my_dir')              # true

