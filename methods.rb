# ------Simple Method------
puts '------Simple Method------'
def simple_method
  puts 'Welcome to Simple Method.'
end
# Calling of the method.
simple_method
puts

# ------Method with Parameters------
puts '------Method with Parameters------'
def para_method(para1 = 'GFG', para2 = 'G4G')
  puts "First parameter is #{para1}"
  puts "Second parameter is #{para2}"
end

# Calling method with parameters.
para_method 'GeeksforGeeks', 'Sudo'
puts ''

# Calling method without passing parameters.
puts 'Without Parameters-'
para_method
puts

# ------Method with Variable Parameters------
puts '------Method with Variable Parameters------'
def var_para_method(*var_para)
  # To display the total number of parameters.
  puts "Number of parameters is: #{var_para.length}"

  for i in 0...var_para.length
    puts "Parameters are: #{var_para[i]}"
  end
end

# Calling method by passing variable number of arguments.
var_para_method('Ram', 'Shyam')
var_para_method('Karan')
puts

# ------Method with Return Statement------
puts '------Method with Return Statement------'
def return_sum
  a = 10
  b = 20
  # sum = a + b
  # return sum
  # Both above 2 & below both statement will give same results.
  a + b
end
puts "Sum of a and b is: #{return_sum}"

def return_default
  x = 15
  y = 25
end
# Every method in Ruby returns value of the last statement by default.
puts "Value of last statement which is returned by default: #{return_default}"

def return_multi
  i = 100
  j = 200
  k = 300
  # return i, j, k or return i, j, 250 both are valid.
  # Below is shortcut for return.
  [i, j, 251]
end
var_ret = return_multi
# Assigning returned values to muliple variables (Correspondingly)
x, y, z = return_multi
puts "Method returning multiple values: #{return_multi}"
puts var_ret
print 'Value of y: ', y
# print "Value of y: #{y}"      --Also valid (Works same as above)--
puts "\n\n"

# ------Class vs Instance Methods vs Method which is outside of Class------
puts '------Class vs Instance Methods vs Method which is outside of Class------'
class TestMethods
  # def TestMethods.class_method  --Also valid--
  def self.class_method
    puts 'Hello from class method.'
    a = 11
    b = 22
    a + b
  end

  def inst_method
    puts 'Hello from instance method.'
    a = 30
    b = 20
    a - b
  end

  # Making Object inside Class.
  i_obj = TestMethods.new

  print 'Calling class method inside Class: '
  class_method
  # TestMethods.class_method    --Also valid--
  # self.class_method           --Also valid--

  print 'Calling instance method inside Class: '
  TestMethods.new.inst_method
  # i_obj.inst_method           --Also valid--
  # obj.inst_method             --Invalid Syntax (Error)--
  # inst_method                 --Invalid Syntax (Error)--

  puts 'Calling outside method inside Class: NOT POSSIBLE.'
  # TestMethods.outside_method  --Invalid Syntax (Error)--
  # i_obj.outside_method        --Invalid Syntax (Error)--
  # outside_method              --Invalid Syntax (Error)--
end

print 'Calling class method: '
TestMethods.class_method
# self.class_method             --Invalid Syntax (Error)--
# class method can be defined using 'self' keyword but
# cannot be called using 'self' keyword outside the class.

obj = TestMethods.new
print 'Calling instance method: '
obj.inst_method
# TestMethods.new.inst_method      --Also valid--
# inst_method                   --Invalid Syntax (Error)--

# Method outside class is marked as 'private' by default.
def outside_method
  puts 'Hello from method outside class.'
end
print 'Calling method which is outside of class: '
outside_method
# obj.outside_method            --Invalid Syntax (Error)--
# TestMethods.outside_method    --Invalid Syntax (Error)--
puts

# ------Calling vs Printing Method------
puts '------Calling vs Printing Method------'
def sample_method
  puts 'I am Sample Mehtod.'
  x = 251
  y = 351
end
# Simply Calling a method.
puts 'Simply calling a method: '
# This won't print the x and y value or last statement value.
sample_method
puts
# Printing a method, It prints the last statement along with any
# puts statements.
puts 'Now printing the method using puts: '
puts sample_method
puts
puts "Printing a method, prints its last statement: #{sample_method}"
