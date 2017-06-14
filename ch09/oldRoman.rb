def oldRoman int
  #each letter holds the string numeral and number of times it needs to be repeated
  m =  ["M", (int/1000)]
  d = ["D", (int%1000)/500]
  c = ["C", (int%500)/100]
  l = ["L", (int%100)/50]
  x = ["X", (int%50)/10]
  v = ["V", (int%10)/5]
  i = ["I", int%5]
  numeral = [m,d,c,l,x,v,i]
  numeral.each do |n|
    count =0
    until count >= n[1] do
      print n[0]
      count +=1
    end
  end
end

puts "Enter number between 0 and 3000"
reply = gets.chomp
puts "Old-school Roman numeral conversion:"
oldRoman reply.to_i
