def profile(activate=true, block_description, &block)
  if activate
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

def numeral_to_int(numeral)
  index = {"I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000}
  #numeral as string and returns the represented number
  numeral = numeral.upcase
  #check for invalid numerals. returns false if invalid
  profile($all_profiling ,"checking each char") do
    numeral.each_char { |chr|
      if !(index.has_key?(chr))
            #puts "first"
            return false
      end
    }
  end
  num_int = 0
  prev = ""
  numeral.length.times do |i|
    if (i > 0)
      prev = numeral[i-1]
      # puts index[prev]
      # puts index[numeral[i]]
      # puts index[prev]*5
      # puts !(index[prev]*5 == index[numeral[i]] || index[prev]*10 == index[numeral[i]])
      # puts (index[prev] < index[numeral[i]])
      # puts prev == "V" || prev == "L" || prev == "D"
      if index[prev] < index[numeral[i]] #check if subtraction cases
        if !(index[prev]*5 == index[numeral[i]] || index[prev]*10 == index[numeral[i]]) ||
            prev == "V" || prev == "L" || prev == "D"
            #puts "2nd"
            return false
        end
        num_int += index[numeral[i]] - index[prev] - index[prev]
      else
        num_int += index[numeral[i]]
      end
    else
      num_int += index[numeral[i]]
    end
  end
  return num_int
end

$all_profiling = false
puts "Enter roman numeral"
ans = gets.chomp
if numeral_to_int(ans) == false
  puts "invalid numeral"
else
  profile($all_profiling, 'Roman_to_int') do
      puts numeral_to_int(ans)
    end
end
