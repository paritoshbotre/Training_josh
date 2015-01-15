begin
  puts "Enter the File Path: "
  file_path = gets.chomp

  file = File.read(file_path)
  puts file

rescue StandardError => e
  puts "Exception occured !!"
  puts e
  puts e.message
  puts e.class
end
