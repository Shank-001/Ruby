# num Array
num = [1, 2, 3, 4, 5]

puts '------each Iterator------'
# The .each method iterates over each element of the array,
# allowing you to perform actions on them.
print 'Each Iterator: '
num.each { |elem| print "_#{elem * 2}" }
puts
print 'Each Iterator with do..end: '
num.each do |elem|
  print " #{elem}"
end
puts puts

puts '------map Iterator------'
# The .map Iterator creates a new array containing the values returned by the block.
print 'Map Iterator: '
num.map { |elem| print "_#{elem * 2}" }
puts
print 'Map Iterator with do..end: '
num.map do |elem|
  print " #{elem}"
end
puts
print [[1, 2], [3, 4], [5, 6]].map {|a, b| "a:#{a} b:#{b}" } 
# same works with .each
puts puts

puts '---each vs map---'
cities = %w[tokyo london rio]
# Array#each executes the given block for each element of the array,
# then returns the array itself.
print 'Each prints: '
cities.each { |elem| print " #{elem.upcase}" }
puts
print 'Each returns: '
each_city = cities.each { |elem| elem.upcase }
print each_city
puts

# Array#map also executes the given block for each element of the array,
# but returns a new array whose values are the return values of
# each iteration of the block.
# The main use for Map is to TRANSFORM data.
print 'Map prints: '
cities.map { |elem| print " #{elem.upcase}" }
puts
print 'Map returns: '
map_city = cities.map { |elem| elem.upcase }
print map_city
puts

print "Original Cities: #{cities}"
puts puts

# Summary:
# Each:- returns same array.
# Map & collect:- returns new array with code executed in block for each element.

puts '------each with Range------'
(2..5).each do |i|
  print "Hello! #{i}"
  puts
end
puts

puts '------times Iterator------'
5.times do |i|
  print "Hello! #{i}"
  puts
end
puts

puts '------upto Iterator------'
4.upto(7) do |n|
  print "Hello! #{n}"
  puts
end
puts

puts '------downto Iterator------'
7.downto(4) do |n|
  print "Hello! #{n}"
  puts
end
puts

puts '------step Iterator------'
(0..60).step(10) do |i|
  puts i
end
puts

