puts '------Creating Arrays------'
# names = Array.new               # Empty array.
# names = []
names = Array.new(20)             # Here, 20 is size of array.
# nums = Array.[](1, 2, 3, 4,5)   --Also Valid--
# nums = Array[1, 2, 3, 4, 5]     --Also Valid--
nums = [1, 2, 3, 4, 5]
print nums
puts puts

puts "------Accessing Array------"
print "Num at index 3: "
puts nums[3]
print "Num at index 2: #{nums[2]}"
puts
print "Applying Index directly to Array object: "
puts [2,4,6,8,10][4]
print "Negative index starts form backward: "
puts [2,4,6,8,10][-2]
puts

puts '---Value to Element---'
# You can assign a value to each element in the array as follows. (Adds Mango 5 times.)
arr1 = Array.new(5, 'Mango')
print arr1
puts

arr2 = Array.new(10) { |e| e *= 2 }
print arr2
puts

digits = Array(1..10)
puts "Digits: #{digits}"
puts

# ------Array Methods------
puts '------Array Methods------'
puts '---at(index)---'
num = digits.at(5)
puts "Digit at 5th index: #{num}"
puts "Digit at 9th index: #{digits[9]}"
puts

puts '---length and size---'
puts names.length     # 20
puts names.size       # 20
puts

puts '---first and last---'
puts digits.first
puts digits.last
puts

puts '---take and drop---'
# The .take method returns the first n elements of the array.
print digits.take(4)
puts
# The .drop method returns the elements after n elements of the array.
print digits.drop(7)
puts puts

puts '---pop and shift---'
# The .pop method will permantently remove the last element of an array.
digits.pop
print "Digits after pop: #{digits}"
puts
# The .shift method will permantently remove the first element of an array.
digits.shift
print "Digits after shift: #{digits}"
puts puts

puts '---push and unshift---'
# The .push method will allow you to add an element to the end of an array.
digits.push(1)
print "Digits after push: #{digits}"
puts
# The .unshift method will allow you to add an element to the beginning of an array.
digits.unshift(10)
print "Digits after unshift: #{digits}"
puts puts

puts '---delete_at and delete---'
# The .delete_at method allows you to permanently remove an element at a specified index.
digits.delete_at(2)
print "Digits after deleting element at 3rd index: #{digits}"
puts
# The .delete method removes a specified element from an array permanently.
digits.delete(9)
print "Digits after deleting 9: #{digits}"
puts puts

puts '---reverse---'
# The .reverse method reverses the array but does not mutate it.
# (the original array stays as it is).
print "Digits after reversing: #{digits.reverse}"
puts
print "Original digits: #{digits}"
puts puts

puts '---select---'
# The .select method iterates over an array and returns a new array
# that includes any items that return true to the expression provided.
print "Digits after selecting num > 4: #{digits.select { |num| num > 4 }}"
puts puts

puts '---include?---'
# The include? method checks to see if the argument given is included in the array.
print "Check if include? 7: #{digits.include?(7)}"
puts puts

puts '---flatten---'
# The flatten method can be used to take an array that
# contains nested arrays and create a one-dimensional array.
nested_arr = [1, [2, 3], 4, [5, 6, 7], 8, [9, 10]]
print nested_arr
puts
print "Flattened nested array: #{nested_arr.flatten}"
puts puts

puts '---join---'
arr3 = %w[a b c]
# It converts an Array to a String.
puts "Array to String: #{arr3.join}" # "abc"
puts "Digits array to Sting: #{digits.join}"
# It’s also possible to pass an argument to join,
# this argument is the character separator.
puts "Joined String with separator parameter: #{arr3.join('-')}" # "a-b-c"
puts "Digits joined with parameter: #{digits.join('*')}"
puts

puts '---concat---'
# The .concat method appends the elements from an array to the original array.
# The .concat method can take in multiple arrays as an argument.
# It changes/mutates the original array.
digits.concat([11, 12, 13], [201, 202, 203])
print "Digits after concating: #{digits}"
puts puts

puts '---uniq---'
# The .uniq method returns a copy of the array containing only unique elements.
# Any duplicate elements are removed from the array (i.e. Only first occurrence is kept.)
# Doesn't change original array.
arr4 = [1, 2, 2, 3, 'Apple', 'Apple', 'Mango']
print "Unique elements of array: #{arr4.uniq}"
puts puts

puts "---tally---"
# Tally counts each element's occurrences and 
# returns a hash where the key is the element, and the value is the count.
puts arr4.tally
