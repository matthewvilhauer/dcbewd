###############################################################################
##
## Back-End Web Development - Homework #1
##
## Secret Number is a game you will build in two parts.
## The purpose of the game is to have players guess a secret number from 1-10.
##
## Read the instructions below.
## This exercise will test your knowledge of Variables and Conditionals.
##
################################################################################
##
## We're ready to program! To practice our Ruby skills lets create a secret number game.
## In this game players have three tries to guess a secret number between 1 and 10.
##
## Here are some guidelines to building your game:
##
##  Intros
##  - Welcome the player to your game. Let them know who created the game.
##    - Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
##    - Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10
##    and that they only have 3 tries to do so.
##
##  Functionality:
##   -  Hard code the secret number. Make it a random number between 1 and 10.
##   -  Ask the user for their guess.
##   -  Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
##   -  If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
##   -  Don't forget to let your players know how many guesses they have left. Your game should say something like
##      "You have X many guesses before the game is over enter a another number"
##   -  If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
##
## Make sure to add helpful comments to your code to document what each section does.
##
## Remember to cast input from the Player into the appropriate data type.
##
################################################################################

##Introduction
puts "Welcome to the NUMBER GUESSING GAME! 

This fun number game was created by Matt Vilhauer
"

#Ask for the player's name, and greet them
puts "What's your name?"
player_name = gets.chomp
puts "Hi #{player_name}! Let's begin the game."
puts""

#Let the player know the rules
puts"The Rules:"
puts"You must guess a number between 1 and 10. You will have 3 chances to guess the correct number."

#Assign the secret number variable to a random number from 1-10
secret_number = rand(10)+1

#Keep track of the number of guesses
guesses_left = 3

#Made the status of the game not won, or false
win = false

#Run the game until the player wins or runs out of guesses
while win != true && guesses_left > 0

  #Have the user input their guess
  puts "Go ahead and enter a guess:"
  player_guess = gets.chomp.to_i

  #Update the number of guesses left
  guesses_left -= 1

  #Check to see if the guess is correct. If not correct, let the player know if their guess was too low or high
  if player_guess > secret_number
    puts "Your guess is high..."
    puts "You have #{guesses_left} guesses left"
  elsif player_guess < secret_number
    puts "Your guess is low..."
    puts "You have #{guesses_left} guesses left"
  else
    puts "Wow! You got it! Congratulations!"
    win = true
  end
end