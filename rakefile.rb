# load all the fortune files and count how many there are then take the output
# and paste it into index.html to update the fortune_files array.  This
# rakefile is to avoid hitting each file to count the contents to correctly
# pick a random quote instead of picking a random file and picking a random quote
# white doesn't correctly distribute quotes as it give too much weight to files
# with smaller amounts of quotes.
task :default do
  fortune_directory = "fortunes"
  total_quotes = 0

  puts "var fortune_files_total = {"

  [
    #"#{fortune_directory}/bmc-fortunes/fortunes",
    "#{fortune_directory}/cheerfulghostquotes",
    #"#{fortune_directory}/bsd-fortunes/fortunes",
    "#{fortune_directory}/bsd-fortunes/startrek",
    "#{fortune_directory}/ruanyf/fortune",
    "#{fortune_directory}/catv/kernelnewbies",
    "#{fortune_directory}/splitbrain/starwars",
    "#{fortune_directory}/drwho/drwho",
    "#{fortune_directory}/friends/friends",
    "#{fortune_directory}/nerdtv/tvmovie"
  ].each do |file_path|
    file_array = IO.readlines(file_path)

    file_string = file_array*""
    fortunes = file_string.split("%")

    puts "  \"#{file_path}\": \"#{fortunes.length}\","

    total_quotes += fortunes.length
  end

  puts "};"
end
