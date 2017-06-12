beerNum = 99

while true
  puts beerNum.to_s+" bottles of beer on the wall, "+beerNum.to_s+" bottles of beer."
  beerNum -=1
  print "Take one down and pass it around, "
  if beerNum == 1
    puts beerNum.to_s+" bottle of beer on the wall\n\n"
    puts beerNum.to_s+" bottle of beer on the wall, "+beerNum.to_s+" bottle of beer."
    puts "Take one down and pass it around, no bottles of beer on the wall. \n\n"
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
    break
  end
  puts beerNum.to_s+" bottles of beer on the wall\n\n"
end
