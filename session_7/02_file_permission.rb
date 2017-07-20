###################################
# File permission
###################################

my_file = 'files/file.txt'

puts File.owned?(my_file)         # true

puts File.readable?(my_file)      # true

puts File.executable?(my_file)    # false

puts File.zero?(my_file)          # true
