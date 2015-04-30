## 20 minutes ##
 
# Go through the following steps in order. After you have a solution for each,
# uncomment the puts statements in the 'answer-check' section and in the
# cosole, run 'ruby array_exercise'. If the answer check prints out 'true', you
# know your solution was right, and you can move on to the next. The last
# solution will require you to print a sentence to the screen with your own
# puts statement.
 
# HINT: DO NOT change the line with "puts". Your homework is to make the
# puts statement work correctly!
 
# HINT: Each time you run this file you will see an error message. The error
# messages will help you practice understanding errors as you practice what
# you've learned.
 
#--------------------------------------------
 
# example. Create a new variable called 'my_variable' and set its value to
# 'example' .
my_variable = 'example'
 
# answer_check (un-comment the puts statement below and ruby 'ruby
# array_exercise' to check your solution) #
 
puts "# example: #{my_variable == 'example'}"
 
#--------------------------------------------
# 0. Create an empty array in a variable called 'my_numbers'
# HINT: You will reuse this array below.
 
# answer_check (un-comment the puts statement below and ruby 'ruby array_exercise' to check your solution)
my_numbers = []
puts "# 0: #{my_numbers == []}"
#--------------------------------------------
 
 
#--------------------------------------------
# 1. Change the contents of my_numbers to contain these strings: 'zero', 'one', 'two', 'three', 'four'

my_numbers = ['zero','one','two','three','four']
 
# answer_check #
 
puts "# 1: #{my_numbers == ['zero', 'one', 'two', 'three', 'four'] }"
#--------------------------------------------
 
 
#--------------------------------------------
# 2. Find the length of the array you just created. Assign that value to the
# variable called 'count'.
count = my_numbers.size
 
# answer_check #
puts "# 2: #{count == 5}"
#--------------------------------------------
 
 
#--------------------------------------------
# 3. Assign the value 'four' from the array, to a variable called 'my_value'.
# Do not simply assign 'four', access the value from the array using a method.
my_value = my_numbers.last
 
# answer_check #
puts "# 3: #{my_value == 'four'}"
#--------------------------------------------
 
 
#--------------------------------------------
# 4. Assign the value 'zero' from the array, to a variable called 'my_value'.
# Do not simply assign 'zero', access the value from the array.
 my_value = my_numbers.first
 
# answer_check #
puts "# 4: #{my_value =='zero'}"
#--------------------------------------------
 
 
#--------------------------------------------
# 5. Assign the value 'three' from the array, to a variable called 'my_value'.
# Do not simply assign 'three', access the value from the array.
 
 my_value = my_numbers[3]

# answer_check #
puts "# 5: #{my_value == 'three'}"
#--------------------------------------------
 
 
#--------------------------------------------
# 6. Assign the middle three values from the array, to a variable called
# 'my_values'. Do not simply assign the values one by one, access the values
# from the array.
my_values = my_numbers.slice(1,3)
 
# answer_check #
puts "# 6: #{my_values == ['one', 'two', 'three'] }"
#--------------------------------------------
 
 
#--------------------------------------------
# 7. Change the string value 'zero' in the my_numbers array to the integer 0.
my_numbers[0] = 0 
 
# answer_check #
puts "# 7: #{my_numbers == [0, 'one', 'two', 'three', 'four']  }"
#--------------------------------------------
my_values = my_numbers.slice(1,3)
 
#--------------------------------------------
# 8. Change the next 3 values from strings to the corresponding integers.
my_numbers.map! do |i|
  if i == my_numbers.last
    i
  else
    my_numbers.index(i)
  end
end
 
# answer_check #
puts "# 8: #{my_numbers == [0, 1, 2, 3, 'four']}"
#--------------------------------------------
 
 
#--------------------------------------------
# 9. Remove the last value from the my_numbers array.
my_numbers.pop 
 
# answer_check #
puts "# 9: #{my_numbers == [0, 1, 2, 3] }"
#--------------------------------------------
 
 
#--------------------------------------------
# 10. Create a new empty array named 'categories', using a different approach
# than the 'my_numbers' arary.
# HINT: Read the Ruby docs for other ways to create an array
 categories = Array.new
 
# answer_check #
puts "# 10: #{categories == []}"
#--------------------------------------------
 
 
#--------------------------------------------
# 11. Add 'Music', 'Weather', and 'Kittens' to the categories array. Add each
# category using a different method.
 categories.push "Music"
 categories.insert -1, "Weather"
 categories << "Kittens"
 
# answer_check #
puts "# 11: #{categories.sort == ['Music', 'Weather', 'Kittens'].sort }"
#--------------------------------------------
 
 
#--------------------------------------------
# 12. Add "Music" to the categories array for a second time, using a method you
# did not use in #11.
 categories.unshift "Music"
 
# answer_check #
puts "# 12: #{categories.sort == ['Music', 'Music', 'Weather', 'Kittens'].sort }"
#--------------------------------------------
 
 
#--------------------------------------------
# 13. Make sure only unique values are present in the categories array.
 
# HINT: After this operation, there should be no duplicate values in the array.
categories.uniq!
 
# answer_check #
puts "# 13: #{categories.sort == ['Music','Weather','Kittens'].sort}"
#--------------------------------------------
 
 
#--------------------------------------------
# 14. Write a conditional that adds "Puppies" to the array, but only if
# "Kittens" is already in the categories array.
 categories.unshift("Puppies") if categories.index("Kittens")
 
 
# answer_check #
puts "# 14: #{categories.sort == ['Music','Weather','Kittens','Puppies'].sort}"
#--------------------------------------------
 
 
#--------------------------------------------
# 15. Write a conditional that adds "Java" to the array, only if "Ruby" is
# already in the categories array.
 categories.push("Java") if categories.any? { |category| category == "Ruby"}
 
# answer_check #
puts "# 15: #{categories.sort == ['Music','Weather','Kittens','Puppies'].sort}"
#--------------------------------------------
 
 
#--------------------------------------------
# 16. Sort the contents of the categories array. Make sure that sort persists.
categories.sort!
 
# answer_check #
puts "# 16: #{categories == ['Music','Weather','Kittens','Puppies'].sort}"
#--------------------------------------------
 
 
#--------------------------------------------
# 17. Reverse the order of the contents of the categories array. Make sure that the reverse persists.
 categories.reverse!
 
# answer_check #
puts "# 17: #{categories == ['Music','Weather','Kittens','Puppies'].sort.reverse}"
#--------------------------------------------
 
 
#--------------------------------------------
# 18. Remove the first item from the categories array.
categories.shift
 
# answer_check #
puts "# 18: #{categories == ["Puppies", "Music", "Kittens"]}"
#--------------------------------------------
 
 
#--------------------------------------------
# 19. Remove the last item from the categories array.
 categories.pop
 
# answer_check #
puts "# 19: #{categories == ["Puppies", "Music"]}"
#--------------------------------------------
 
 
#--------------------------------------------
# 20. Add "white and gold dresses" as the first value in the categories array.
 categories.unshift "white and gold dresses"
 
# answer_check #
puts "# 20: #{categories == ["white and gold dresses","Puppies", "Music"]}"
#--------------------------------------------
 
 
#--------------------------------------------
# 21. Combine the contents of the categories array into a single string, with
# each item separated by a comma. Assign this value to a variable named
# 'my_string'.
 
 
# answer_check #
puts "# 21: #{my_string == 'white and gold dresses,Puppies,Music'}"
#--------------------------------------------
 
 
#--------------------------------------------
# 22. Implement some string interpolation, and use the values from the
# categories array to recreate the sample sentence below, and print it to the
# screen.
# sample sentence: "The internet is full of white and gold
# dresses,Puppies,Music and Kittens, though I wish there were less white and
# gold dresses" .
 
 
#--------------------------------------------