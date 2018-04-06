names = ['Pedro', 'Mario']

# lambda declaration
l = lambda { |text| puts text }
l.call('Declared using lambda{}')
names.each(&l)

# Literal - Stabby lambda -
l = ->(text){ puts text }
l.call('Declared using ->(){}')
names.each(&l)


# lambda invocation
l.call('.call')         # .call
l.yield('.yield')       # .yield
l.('.(...)')            # .(...)
l['[...]']              # [...]
