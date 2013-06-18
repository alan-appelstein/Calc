def add(n1,n2)
  return n1+n2
end

def subtract(n1,n2)
  return n1-n2
end

def multiply(n1,n2)
  return n1*n2
end

def divide(n1,n2)
  n1=n1*1.0
  n2=n2*1.0
  return n1/n2
end

def area_rect(base,height)
  return base*height
end

def area_triangle(base,height)
  return base*height*0.5
end

def area_circle(radius)
  pi=3.141596
  return pi*radius**2
end

def vol_cylinder(radius,height)
  area=area_circle(radius)
  return area*height
end

def calc()
  puts ' select number of function'
  puts ' 1. Add '
  puts ' 2. subtract'
  puts ' 3. Multiply'
  puts ' 4. Divide'
  puts ' 5. Calc area rectangle'
  puts ' 6. Calc area triangle'
  puts ' 7. Calc area circle'
  puts ' 8. Calc volume cylinder'


  function = gets.chomp

  case function

    when '1'
      puts 'Add selected, enter first number'
      n1= gets.chomp.to_i
      puts 'enter second number'
      n2= gets.chomp.to_i
      answer=add(n1,n2)
      return answer
    when '2'
      puts 'Subtract selected, enter first number'
      n1= gets.chomp.to_i
      puts 'enter second number'
      n2= gets.chomp.to_i
      answer=subtract(n1,n2)
      return answer
    when '3'
      puts 'Multiply selected, enter first number'
      n1= gets.chomp.to_i
      puts 'enter second number'
      n2= gets.chomp.to_i
      answer=multiply(n1,n2)
      return answer
    when '4'
      puts 'Divide selected, enter first number'
      n1= gets.chomp.to_i
      puts 'enter second number'
      n2= gets.chomp.to_i
      answer=divide(n1,n2)
      return answer
    when '5'
      puts 'Area of rectangle selected, enter length'
      n1= gets.chomp.to_i
      puts 'enter width'
      n2= gets.chomp.to_i
      answer=area_rect(n1,n2)
      return answer
    when '6'
      puts 'Area of triangle selected, enter base'
      n1= gets.chomp.to_i
      puts 'enter height'
      n2= gets.chomp.to_i
      answer=area_triangle(n1,n2)
      return answer
    when '7'
      puts 'Area of circle selected, enter radius'
      n1= gets.chomp.to_i
      answer=area_circle(n1)
      return answer
    when '8'
      puts 'Volume of cylinder selected, enter radius'
      n1= gets.chomp.to_i
      puts 'enter height'
      n2= gets.chomp.to_i
      answer=vol_cylinder(n1,n2)
      return answer

    else
      puts 'wrong value entered'
      return 0
    end
end


calculation =calc()
puts "answer = #{calculation}"