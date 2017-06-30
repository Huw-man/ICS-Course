require 'time'
puts "when was your birthday? (DD-MM-YYYY)"
bday = Time.parse(gets.chomp)
#Singapore is +8hr to UTC
#bday = Time.new(1999,9,18, 9,0,0, "+08:00")
now = Time.now
puts "You are #{(now-bday).to_i} seconds old"
puts "You will be a billions seconds old on #{(bday+1000000000).ctime}"
