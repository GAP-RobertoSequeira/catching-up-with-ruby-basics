###################################
# Hash methods
###################################

# symbols are unique and immutable

p :foo.class         # Symbol
p :foo               # :foo
p :'foo'             # :foo
foo = 'foo'
p :"#{foo}"          # :foo

puts :foo.to_s       # foo
p 'foo'.to_sym       # :foo
