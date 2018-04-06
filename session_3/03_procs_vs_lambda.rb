# Proc - Lambda differences
#   1. return clause
#   2. validation of params

# Proc
#
def return_from_proc
  # 1. proc executes the return in de context of the method
  # so the method execution returns from here
  Proc.new { return 'we just returned from the block' }.call
  'we just returned from the calling method'
end

puts return_from_proc # we just returned from the block

# 2. proc does no validate for parameters
p = proc { |text| puts text }
p.call                      # no errors, no print
p.call('hello')             # no errors, prints hello
p.call('hello', 'bye')      # no errors, prints hello and ignores bye

# Lambda

def return_from_lambda
  # 1. lambda executes the return in its own internal context
  # so it doesn't affect the method scope and the execution continues
  lambda { return 'we just returned from the block' }.call
  'we just returned from the calling method'
end

puts return_from_lambda # we just returned from the calling method

# 2. Lambda validates expected parameters
l = lambda { |text| puts text }
l.call('Hello')
# l.call                        # ArgumentError: wrong number of arguments (0 for 1)
# l.call('hello', 'welcome')    # ArgumentError: wrong number of arguments (2 for 1)
