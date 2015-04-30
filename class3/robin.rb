puts "What's your number?"
number = gets.chomp.to_i

def fizzbuzz(integer)

  if integer % 3 == 0 && integer % 5 == 0
  puts "fizzbuzz"
  elsif integer % 5 == 0
  puts "buzz"
  elsif integer % 3 == 0
  puts "fizz"
  end

end

fizzbuzz(number)

