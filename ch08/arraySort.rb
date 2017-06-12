puts "Type as many words as you want\nends when you press enter on an empty line
returns words in alphabetical order"

words = []
while true
  i = gets.chomp
  if i == ""
    sortedWords = words.sort()
    puts sortedWords
    break
  end
  words.push(i)
end
