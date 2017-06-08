puts "enter starting year"
startYear = gets.chomp
puts "enter ending year"
endYear=gets.chomp
puts"leap years between #{startYear} and #{endYear}:"
y = startYear.to_i
while y <= endYear.to_i
  if y%4==0 && !(y%100==0) || y%400==0
    puts y.to_s
  end
  y +=1
end
