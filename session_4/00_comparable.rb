class Developer
  include Comparable

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  # we can customize the spaceship operator in order to use the
  # attribute that better suits our needs and context
  def <=>(other)
    self.age <=> other.age
  end
end

bob = Developer.new('Bob', 24)
john = Developer.new('John', 25)
jane = Developer.new('Jane', 26)
peter = Developer.new('Peter', 27)
paul = Developer.new('Paul', 20)

puts bob < john           # true
puts john <= jane         # true
puts jane == peter        # false
puts peter >= paul        # true
puts paul > bob           # false

puts bob.between?(paul, peter)      # true
puts bob.between?(john, peter)      # false

# spaceship operator is used also for sorting which is based on comparison of elements
p [peter, paul, john, jane, bob].sort.map(&:name) # ["Paul", "Bob", "John", "Jane", "Peter"]

# Spaceship operator functionality
p  1 <=> 2    # -1
p  1 <=> 1    # 0
p  2 <=> 1    # 1


