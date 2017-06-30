require 'time'
puts "when was your birthday? (DD-MM-YYYY)"
bday = Time.parse(gets.chomp)
age = Time.at(Time.now-bday).year-1970
puts "you must be #{age} years old"
age.times do
  puts "SPANK!"
end
