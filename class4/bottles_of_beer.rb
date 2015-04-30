
def bottles_of_beer
  99.downto(1) do |bottles|

    if bottles == 1
      puts "#{bottles} bottles of beer on the wall. #{bottles} bottles of beer."
      puts "Take it down, pass it around, No more beer on the wall now!"
    else
      puts "#{bottles} bottles of beer on the wall. #{bottles} bottles of beer."
      puts "Take one down, pass it around, #{bottles-1} bottles of beer on the wall!"
    end
  end
end

bottles_of_beer


