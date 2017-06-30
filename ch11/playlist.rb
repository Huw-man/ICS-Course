def create_playlist(name, songs)
  filename = "#{File.expand_path(File.dirname(__FILE__))}/#{name}.txt.m3u"
  File.open filename, 'w' do |f|
    f.puts songs
  end
end

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

puts "select music"
Dir.chdir 'C:\Users\Newman Hu\Music\TWICEcoaster Lane1'

song_names = Dir['*.mp3']
playlist = []
puts song_names

puts "\ntype in the number of the song \npress enter on blank to stop selection and create playlist"
i=true
while i==true
  sel = gets.chomp.to_i
  if sel != 0
    playlist.push(song_names[sel-1])
  else
    i=false
  end
end
create_playlist("TwicePlay", playlist)
create_playlist("TwicePlayShuffled", shuffle(playlist))
