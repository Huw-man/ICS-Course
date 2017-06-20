def sort some_array
  recursive_sort some_array, [];
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    return sorted_array
  end
  smallest = unsorted_array.first
  unsorted_array.each do |n|
    if smallest > n
      smallest = n
    end
  end
  unsorted_array.delete(smallest)
  sorted_array.push(smallest)
  recursive_sort(unsorted_array, sorted_array)
end

puts "Type as many words as you want\nends when you press enter on an empty line
returns words in alphabetical order"

words = []
while true
  i = gets.chomp
  if i == ""
    puts sort(words)
    break
  end
  words.push(i)
end
