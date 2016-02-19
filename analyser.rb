puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Welcome #{first_name} #{last_name} to the analyser"
puts "Your first name is #{first_name.length} characters long"
puts "Your last name is #{last_name.length} characters long"
full_name = first_name + " " + last_name
puts "Your name backwards is #{full_name.reverse}"
