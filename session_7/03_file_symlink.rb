###################################
# File symlinks and hard links
###################################

my_file = 'files/file.txt'
time = Time.now.strftime('%H%M%S')

# hard link and symbolic link creation
File.link(my_file, "#{my_file}.#{time}.txt")
File.symlink(my_file , "#{my_file}.#{time}.sym")

# name of the file referenced by given link
puts File.readlink("#{my_file}.#{time}.sym")      # .../files/file.txt

puts File.symlink?(my_file)                       # false
puts File.symlink?("#{my_file}.#{time}.txt")      # false
puts File.symlink?("#{my_file}.#{time}.sym")      # true

