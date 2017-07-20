###################################
# File properties and methods
###################################

my_file = 'files/file.txt'

puts File.absolute_path('file.txt', 'files')            # .../files/file.txt

# last access time
puts File.atime(my_file)

# Change time (the time at which directory information about the file was changed, not the file itself).
puts File.ctime(my_file)

# Modification time for file
puts File.mtime(my_file)

# file base name
puts File.basename('/files/file.txt')                   # file.txt
puts File.basename('/bar/files/file.txt', '.txt')       # file
puts File.basename('/foo/bar/files/file.txt', '.*')     # file

# file extension
puts File.extname('files/file.txt')                     # .txt

# directory
puts File.dirname('/foo/bar/files/file.txt')            # /foo/bar/files

# generate a path
puts File.join('foo', 'bar', 'files', 'file.txt')       # foo/bar/files/file.txt
