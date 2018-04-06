names = ['Pedro', 'Mario']

# proc declaration
p = Proc.new { |text| puts text }

p.call('Created using Proc.new')
names.each(&p)

# proc is preferred instead of Proc.new
p = proc { |text| puts text }
p.call('created using Kernel#proc method')
names.each(&p)

# proc invocation
p.call('.call')           # .call
p.yield('.yield')         # .yield
p.('.(...)')              # .(...)
p['[...]']                # [...]



