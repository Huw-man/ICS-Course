$nestDepth = 0
def betterLog(blockName, &block)
  $nestDepth.times do print "\t" end
  puts "Beginning #{blockName}..."
  $nestDepth +=1
  ans = yield
  $nestDepth -=1
  $nestDepth.times do print "\t" end
  puts "...#{blockName} finished, returning: #{ans}"
end

betterLog "outside" do
  betterLog "inside" do
    betterLog "inside side" do
      "inside of the in"
    end
    3+7
  end
  27 >= 99
end
