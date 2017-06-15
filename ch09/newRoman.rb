def newRoman int
  #each letter holds the string numeral and number of times it needs to be repeated
  m =  ["M", (int/1000)]
  d = ["D", (int%1000)/500]
  c = ["C", (int%500)/100]
  l = ["L", (int%100)/50]
  x = ["X", (int%50)/10]
  v = ["V", (int%10)/5]
  i = ["I", int%5]
  #exceptions for 4,9,40,90,400,900
  if int%5 == 4
    i = ["IV", 1]
  end
  if (int%10)/5 == 1 && int%5 == 4
    v = ["IX", 1]
    i[1] =0
  end
  if (int%50)/10 == 4
    x = ["XL", 1]
  end
  if (int%50)/10 == 4 && (int%100)/50 ==1
    l = ["XC", 1]
    x[1] =0
  end
  if (int%500)/100 == 4
    c = ["CD", 1]
  end
  if (int%500)/100 == 4 && (int%1000)/500 ==1
    d = ["CM", 1]
    c[1] =0
  end

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
puts "modern roman numeral conversion:"
newRoman reply.to_i
