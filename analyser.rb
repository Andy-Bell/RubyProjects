puts "What is your first name?"
first_name = gets.chomp #this is going to get input from user
puts "What is your last name?"
last_name = gets.chomp
puts "Welcome #{first_name} #{last_name} to the analyser"
puts "Your first name is #{first_name.length} characters long"
puts "Your last name is #{last_name.length} characters long"
full_name = first_name + " " + last_name
puts "Your name backwards is #{full_name.reverse}"
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
def multiply(first_number, second_number)
  first_number.to_f * second_number.to_f
end

def divide(first_number, second_number)
  first_number.to_f / second_number.to_f
end

def subtract(first_number, second_number)
  second_number.to_f - first_number.to_f
end

def modulus(first_number, second_number)
  first_number.to_f % second_number.to_f
end
puts "What do you want to do? 1) multiply 2)divide 3)subtract 4)find remainder"
prompt = gets.chomp

if prompt == "1"#condition 1
  #execute logic 1
  puts "You have chosen to multiply"
  result = multiply(first_number,second_number)
elsif prompt == "2" #condition 2
  #execute logic 2
  puts "You have chosen to divide"
  result = divide(first_number,second_number)
elsif prompt == "3"#condition 3
  #execute logic 3
  puts "You have chosen to subtract"
  result = subtract(first_number,second_number)
elsif prompt == "4" #condition 4
  #execute logic 4
  puts "You have chosen to find the remainder"
  result = modulus(first_number,second_number)
else
  puts "You have made an invalid choice"

end
puts "The result is #{result}"


#puts "The first number multiplied by the second number is: #{multiply(first_number, second_number)}"
#puts "The first number divided by the second number is:  #{divide(first_number, second_number)}"
#puts "The first number subtracted from the second number is: #{ subtract(first_number, second_number)}"
#puts "The first number modulus by the second number is: #{modulus(first_number, second_number)}"


