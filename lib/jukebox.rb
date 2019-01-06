songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    song_number = i + 1
    puts "#{song_number}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  song_number = song.to_i - 1

  if songs.include?(song)
    puts "Playing #{song}"
  elsif songs[song_number] != nil && song_number > -1
    puts "Playing #{songs[song_number]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_list)
  default_text = "Please enter a command:"
  help
  puts default_text
  users_input = gets.chomp

  while users_input do
    if users_input == "help"
      help
    elsif users_input == "list"
      list(song_list)
    elsif users_input == "play"
      play(song_list)
    elsif users_input == "exit"
      exit_jukebox
      break
    end

    puts default_text
    users_input = gets.chomp
  end
end
