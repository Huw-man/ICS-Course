def log(blockName, &block)
  puts "Beginning #{blockName}..."
  ans = yield
  puts "...#{blockName} finished, returning: #{ans}"
end

log "outside" do
  log "inside" do
    log "inside side" do
      "inside of the in"
    end
    3+7
  end
  27 >= 99
end
