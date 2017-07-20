###################################
# EOF IO#gets vs Kernel#readline
###################################

my_file = 'files/file.txt'

# gets starts printing nil once the last line has been reached
File.open(my_file) { |file| 15.times { p file.gets } }

# readline throws and exception after the last line has been reached
begin
  File.open(my_file) { |file| 15.times { p file.readline } }
rescue
  p $!                     # <EOFError: end of file reached>
end
