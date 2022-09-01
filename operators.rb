class Operators
  # ------Arithmetic Operators------

  # Addition
  puts('Addition:')
  puts(10 + 20)

  # Subtraction
  puts('Subtraction:')
  puts(40 - 20)

  # Division
  puts('Division:')
  puts(100 / 20)

  # Multiplication
  puts('Multiplication:')
  puts(10 * 20)

  # Modulus
  puts('Modulus:')
  puts(20 % 7)

  # Exponent
  puts('Exponent:')
  puts(2**4)
  puts

  # ------Comparison Operators------
  puts 'Equal To Operator:'
  puts(10 == 20)

  puts 'Not Equal To Operator:'
  puts(40 != 20)

  puts 'Greater than Operator'
  puts(100 > 20)

  puts 'Less than Operator'
  puts(10 < 20)

  puts 'Less than Equal To Operator'
  puts(2 <= 5)

  puts 'Greater than Equal To Operator'
  puts(2 >= 5)

  puts 'Combined combination operator'
  puts(20 <=> 20)
  puts(10 <=> 20)
  puts(20 <=> 10)

  # 20 is of Interger type while 20.00 is of Float type. And here .eql? checks type.
  puts "If 20 is ==, .eql?, .equal? to 20.00"
  puts(20==20.00)
  puts(20.eql?(20.00))
  puts(20.equal?(20.00))
  puts "Hash"
  a = {a:1, b:1}
  b = {a:1, b:1}
  puts (a==b)
  puts (a.eql?b)
  puts (a.equal?b)
  puts

  puts 'Comparing str1 and str2:'
  str1 = 'Hello'
  str2 = 'Hello'
  puts str1.eql?(str2)
  # .equal? works on object id.
  puts str1.equal?(str2)
  puts

  puts 'Comparing sym1 and sym2:'
  sym1 = :Hello
  sym2 = :Hello
  puts sym1.eql?(sym2)
  puts sym1.equal?(sym2)
  puts

  # ------Logical Operators------
  a = 10
  b = 20
  c = 30

  # using && operator
  if a == 10 && b == 25 && c == 30
    puts 'Logical AND Operator'
  else
    puts 'Logical AND condition not satisfied.'
  end

  # using || operator
  puts 'Logical OR operator' if a == 10 || b == 25

  # using ! operator
  puts 'Logical Not Operator'
  puts !true
  puts

  # ------Assignments Operators------
  puts 'Simple assignment operator'
  puts a = 20

  puts 'Add AND assignment operator'
  puts a += 10

  puts 'Subtract AND assignment operator'
  puts a -= 5

  puts 'Multiply AND assignment operator'
  puts a *= 10

  puts 'Divide AND assignment operator'
  puts a /= 5

  puts 'Modulus AND assignment operator'
  puts a %= 3

  puts 'Exponent AND assignment operator'
  puts a **= 3
  puts

  # ------Bitwise Operators------
  a = 10
  b = 20

  puts 'Bitwise AND operator'
  puts(a & b)

  puts 'Bitwise OR operator'
  puts(a | b)

  puts 'Bitwise XOR operator'
  puts(a ^ b)

  puts 'Bitwise Complement operator'
  puts(~a)

  puts 'Binary right shift operator'
  puts(a >> 2)

  puts 'Binary left shift operator'
  puts(a << 2)
  puts

  # ------Ternary Operator------
  marks_obtained = 100

  result = marks_obtained > 40 ? 'Pass' : 'Fail'

  puts result
  puts

  # ------Range Operators------

  # using (..) Operator
  range_op = (7..10).to_a

  # displaying result
  puts "#{range_op}"

  # using (...) Operator
  range_op1 = (7...10).to_a

  # displaying result
  puts "#{range_op1}"
end
