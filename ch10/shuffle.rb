def shuffle some_array
  recursive_shuffle some_array, []
end

def recursive_shuffle original, shuffled
  if original.length ==0
    return shuffled
  end
  i = rand(original.length)
  shuffled.push(original[i])
  original.delete_at(i)
  recursive_shuffle(original, shuffled)
end

puts "Type as many words as you want\nends when you press enter on an empty line
returns words in shuffled order"

words = []
while true
  i = gets.chomp
  if i == ""
    puts shuffle(words)
    break
  end
  words.push(i)
end
