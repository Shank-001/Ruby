class Parent
  def speak
    puts 'Hey, Tj!'
  end

  def selfclass_calling_private
    direct_private
  end

  def selfclass_calling_protected
    direct_protected
  end

  private

  def direct_private
    puts "Hi, I am Private"
  end

  protected

  def direct_protected
    puts 'Hey, I am Protected'
  end
end

class Child < Parent
  def subclass_calling_private
    direct_private
  end

  def subclass_calling_protected
    direct_protected
  end
end


child_obj = Child.new
parent_obj = Parent.new

puts "------------------------SELF CLASS------------------------"
puts "parent_obj.selfclass_calling_private"
puts parent_obj.selfclass_calling_private
puts

puts "parent_obj.selfclass_calling_protected"
puts parent_obj.selfclass_calling_protected
puts

# Error in below
puts "parent_obj.direct_private"
begin
  puts parent_obj.direct_private
rescue
  puts "#Some ERROR"
end  
puts

puts "parent_obj.direct_protected"
begin
  puts parent_obj.direct_protected
rescue
  puts "#Some ERROR"
end
puts

puts "------------------------SUBCLASS------------------------"
puts "child_obj.subclass_calling_private"
puts child_obj.subclass_calling_private
puts

puts "child_obj.subclass_calling_protected"
puts child_obj.subclass_calling_protected
puts

puts "child_obj.direct_private"
begin 
  puts child_obj.direct_private
rescue
  puts "#Some ERROR"
end
puts 

puts "child_obj.direct_protected"
begin 
  puts child_obj.direct_protected
rescue
  puts "#Some ERROR"
end
puts

puts "Verdict: Parent and Child class both can call both Private and Protected method indirectly by using it in another method. 
But cannot call them directly"
puts "No difference found between them till now"

