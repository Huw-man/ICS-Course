puts "Your talking to Deaf Grandma"
byeCount =0
while true
  t = gets.chomp
  if t == "BYE"
    byeCount +=1
    if byeCount == 3
      puts "FINE GOODBYE.\nSEE YOU NEXT TIME SONNY!"
      break
    end
  end
  if t != "" && t == t.upcase && t != "BYE"
    puts "NO, NOT SINCE #{1930 + rand(20)}"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
