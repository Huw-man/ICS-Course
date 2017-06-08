puts "Your talking to Deaf Grandma"

while true
  t = gets.chomp
  if t != "" && t == t.upcase
    if t == "BYE"
      puts "SEE YOU NEXT TIME SONNY!"
      break
    end
    puts "NO, NOT SINCE #{1930 + rand(20)}"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
