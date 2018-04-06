# Declare a Customer struct which is goin to be accessible
# through the Struct:: namespace
Struct.new("Customer", :name, :address)
customer = Struct::Customer.new("Dave", "123 Main")

puts customer.name

# adding methods to the struct
Customer = Struct.new(:name, :address)
Customer = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end

puts Customer.new("Dave", "123 Main").greeting


# Struct can be used to give meaning and context
locations = [[40.748817, -73.985428], [40.702565, 73.992537]]

# vs

Location = Struct.new(:longitude, :latitude)
location = Location.new(40.748817, -73.985428)
location.longitude                                # 40.748817
