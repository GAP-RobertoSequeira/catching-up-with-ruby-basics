###################################
# Hash methods
###################################

h = { a: 'a', b: 'b' }
puts h.clear                        # {}

h = {a: 'a', b: 'b'}
puts h.store(:c, 'c')               # c
puts h                              # {:a=>"a", :b=>"b", :c=>"c"}

h = { 'a' => 100, 'b' => 200 }
p h.delete('a')                     # 100
p h.delete('z')                     # nil

h1 = { 'a' => 1, 'b' => 200 }
h2 = { 'b' => 3, 'c' => 4 }
puts h1.merge(h2)                   # {"a"=>1, "b"=>3, "c"=>4}

# any?, empty?, select, reject

# iterate over hash elements

h = {a: 1, b: 2}

h.each_key { |k| puts k }             # a  b

h.each_value { |v| puts v }           # 1  2

h.each_pair { |k, v| puts "#{k} : #{v}" }   # a : 1   b : 2
