###################################
# File split and stats
###################################

my_file = 'files/file.txt'

puts File.size(my_file)                   # 452

p File.split(my_file)                     # ["files", "file.txt"]
p File.split('/foo/bar/files/file.txt')   # ["/foo/bar/files", "file.txt"]

stat = File.stat(my_file)
p stat
