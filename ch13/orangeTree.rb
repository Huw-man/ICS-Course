class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @oranges = 0
  end

  def oneYearPasses
    @age += 1
    @oranges = 0
    if @age < 10 #grows fast until materurity
      @height += 2
    else
      @height += 1
    end
    if @age > 7
      @oranges += rand(10) #produces 0 -10 oranges
    end
    if @age > 24
      return false
    end
  end

  def height
    return @height
  end

  def age
    return @age
  end

  def orangeCount
    return @oranges
  end

  def pickOrange
    if @oranges > 0
      @oranges -= 1
      return true
    else
      return false
    end
  end
end

tree = OrangeTree.new
while true
  puts "Grow your tree and pick oranges when your tree can bear fruit. Tree dies once it is 25"
  puts "grow, pick, height, age, oranges"
  ans = gets.chomp.downcase
  if ans == "grow"
    if tree.oneYearPasses == false
      puts "What a lovely tree but it has passed away"
      break
    end
  elsif ans == "pick"
    if tree.pickOrange
      puts "Yay, you picked an orange! There are #{tree.orangeCount} oranges left"
    else
      puts "There are no oranges to pick! Keep growing your tree"
    end
  elsif ans == "height"
    puts "Your tree is #{tree.height}ft tall"
  elsif ans == "age"
    puts "Your tree is #{tree.age} years old"
  elsif ans == "oranges"
    puts "Your tree has #{tree.orangeCount} oranges"
  end
end
