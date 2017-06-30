$birthdays = {}
File.open("birthdays.txt").each do |line|
  $birthdays[line[0,line.index(',')].downcase] = line[line.index(',')+1..-1].lstrip
end

def age(name)
  birthyear = $birthdays[name][$birthdays[name].index(',')+1..-1].lstrip
  return Time.now.year - birthyear.to_i
end

puts "Who's birthday do you want to know?"
who = gets.chomp
if who.include?(' ')
  who[0]=who[0].upcase
  who[who.index(' ')+1] = who[who.index(' ')+1].upcase
  captilaized = who
  who = who.downcase
  if $birthdays.has_key?(who)
    puts "#{$birthdays[who]}#{captilaized} is #{age(who)} years old"
  else
    puts "Sorry, that person's birthday is not known."
  end
else
  puts "enter first and last name separated with a space"
end
