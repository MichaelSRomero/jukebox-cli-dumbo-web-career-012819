#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '/Users/mykethetitan/Development/labs/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/Users/mykethetitan/Development/labs/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/Users/mykethetitan/Development/labs/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/Users/mykethetitan/Development/labs/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/04.mp3',
# "Wolf" => '/Users/mykethetitan/Development/labs/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/05.mp3',
# "Blue" => '/Users/mykethetitan/Development/labs/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/Users/mykethetitan/Development/labs/jukebox-cli-dumbo-web-career-012819/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  songs_array = my_songs.keys

  songs_array.each_with_index do |name, i|
    position = i + 1

    puts "#{position}. #{name}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

  puts "Please enter a song name:"
  song = gets.chomp

  my_songs.each do |name, path|
    if name == song
      system "open #{path}"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  default_text = "Please enter a command:"
  help
  puts default_text
  users_input = gets.chomp

  while users_input do
    if users_input == "exit"
      exit_jukebox
      break
    elsif users_input == "play"
      play(my_songs)
    elsif users_input == "help"
      help
    elsif users_input == "list"
      list(my_songs)
    end

    puts default_text
    users_input = gets.chomp
  end
end
