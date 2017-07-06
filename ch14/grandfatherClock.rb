def chimeBlock(&block)
  repeat = Time.new.hour % 12
  repeat.times do
    block.call
  end
end

chimeBlock do
  puts "dong"
end
