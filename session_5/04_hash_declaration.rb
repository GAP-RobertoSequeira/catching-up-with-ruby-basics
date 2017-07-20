###################################
# Hash declaration
###################################

h = Hash.new
h[:a] = 'a'
puts h                            # {:a=>"a"}

h = { a: 'a', b: 'b' }
puts h                            # {:a=>"a", :b=>"b"}

h = Hash.new('Default value')
puts h[:a]                        # Default value

puts h.default                    # Default value

h.default = 'Other default'
puts h.default                    # Other value

p Hash['a', 100, 'b', 200]        # {"a"=>100, "b"=>200}
