def toaster(tray)
  return "#{tray} is now toasty"
end

puts "Insert some bread."

bread = gets.chomp

puts toaster(bread)
