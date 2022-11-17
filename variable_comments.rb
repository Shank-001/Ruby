# ------Testing Local, Instance and Class Variables------

require 'byebug'

class Customer
  # @@no_of_customers is a Class Variable.
  @@no_of_customers = 0

  # VAR1 and VAR2 are Constants.
  VAR1 = 100
  VAR2 = 200

  # id, name, addr are Local Variables of initialize() method.
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
    # @cust_id, @cust_name, @cust_addr are Instance Variables.
  end

  def display_details
    puts "Customer id #{@cust_id}"
    puts "Customer name #@cust_name"
    # Both of above are correct
    puts "Customer address #{@cust_addr}"
    # This is the syntax of String interpolation "Some text/string #{varialble/Ruby code}" 

    # NOTE: − In Ruby, you CAN access value of any variable or
    # constant by putting a hash (#) character just before that
    # variable or constant.
  end

  def total_no_of_customers
    @@no_of_customers += 1
    puts "Total number of customers(Class Variable): #{@@no_of_customers}"
  end

  def show
    puts "Value of first Constant is #{VAR1}"
    puts "Value of second Constant is #{VAR2}"
  end
end

# Create Objects
cust1 = Customer.new('1', 'John', 'Wisdom Apartments, Ludhiya')
cust2 = Customer.new('2', 'Poul', 'New Empire road, Khandala')

# Call Methods
cust1.display_details
cust2.display_details
puts ''
cust1.total_no_of_customers
cust2.total_no_of_customers
# A static variable is implemented in ruby using class variable.
puts ''
cust1.show
puts

# ------Testing Global Variables------

$global_variable = 15
class Class1
  def print_global
    puts "Global variable in Class1 is #{$global_variable}"
  end
end
# Both above and below are correct.
class Class2
  def print_global
    puts "Global variable in Class2 is #$global_variable"
  end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
