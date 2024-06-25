# ------Proc------
proc_test = proc { puts 'I am Proc.' }
# proc_test = Proc.new { puts "I am Proc.new."}   --Also Valid--
proc_test.call
# proc_test.()              --Also Valid--
# proc_test.[]              --Also Valid--  
# proc_test[]               --Also Valid--
# proc_test.===             --Also Valid--

# ---Proc with do...end---
proc_do_end = proc do
  puts 'Proc do...end line 1.'
  puts 'Proc do...end line 2.'
end
proc_do_end.call
puts

# ---Proc with Parameters---
proc_args = proc { |x, y| puts "Proc don't care about arguments! #{x} #{y}" }
proc_args.call
proc_args.call(20)
proc_args.call(30, 40)
# Proc doesn't care about arguments(i.e. Unlike regular methods or
# blocks there will be no Error even if there are no equivalent arguments
# passed for parameters.)
puts

# ---Return form Proc---
# proc_return = Proc.new { return 1 }
# puts "Proc result: #{proc_return.call}" 
# There should be LocalJumpError here.          --DOUBT--


# ------Lambda------
lambda_test = -> { puts 'I am Lambda.' }
# lambda_test = lambda {puts "I am Lambda."}    --Also Valid--
lambda_test.call
# lambda_test.()            --Also Valid--
# lambda_test.[]            --Also Valid--
# lambda_test[]             --Also Valid--
# lambda_test.===           --Also Valid--

# ---Lambda do...end---
lambda_do_end = lambda do
  puts 'Lambda do...end line 1.'
  puts 'Lambda do...end line 2.'
end
lambda_do_end.call
puts

# ---Lambda with Parameters---
lambda_args = ->(x, y) { puts "Lambda is strict about arguments! #{x} #{y}" }
# lambda_args = lambda { |x, y| puts "Lambda is strict about arguments! #{x} #{y}" }  --Also Valid--
# lambda_args.call          --Invalid Syntax (Error)--
# lambda_args.call(20)      --Invalid Syntax (Error)--
lambda_args.call(30, 40)
puts

# ---Return from Lambda---
# Lambda will return normally, like a regular method.
my_lambda = -> { return 15 }
puts "Lambda result: #{my_lambda.call}"
