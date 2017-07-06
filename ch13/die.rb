class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def setDice num
    if num > 6 || num < 1
      return false
    end
    @number_showing = num
  end
end

dice = Die.new
while true
  puts "roll, set, or show the dice. (q to quit)"
  ans = gets.chomp
  if ans == "roll"
    dice.roll
    puts dice.showing
  elsif ans == "set"
    puts "what number?"
    setNum = gets.chomp.to_i
    if dice.setDice(setNum) == false
      puts "Dice only have numbers 1 through 6!"
    else
      dice.setDice(setNum)
      puts dice.showing
    end
  elsif ans == "show"
    puts dice.showing
  elsif ans == "q" || ans == "quit"
    break
  end
end
