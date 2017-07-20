###################################
# Symbol identity
###################################

puts 'hello'.object_id         # 14970040
puts 'hello'.object_id         # 14969880

p :foo.object_id               # 906908
p :'foo'.object_id             # 906908
foo = 'foo'
p :"#{foo}".object_id          # 906908
p 'foo'.to_sym.object_id       # 906908