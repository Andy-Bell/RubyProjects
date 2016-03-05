#Do not know actual US city codes, so have just added arbitary 3 digit codes
dial_book = {
  "New York" => "212",
  "San Francisco" => "442",
  "Boston"=> "342",
  "New Jersey" => "452",
  "Dallas" => "643",
  "Austin" => "221",
  "Pheonix" => "873",
  "Las Vegas" => "698",
  "Denver" =>"345",
  "Flint" => "461"
  }
#iterates through the city names to provide a list
def city_names(hash)
  hash.each{ |k,v| puts k}
end
#looks up the result of the search
def result(hash, key)
  hash[key]
end
loop do
  puts "Do you want to look up an area code? (Y/N)"
  answer = gets.chomp
  #if anything that is not Y is input, it breaks the loop
  if answer != "Y"
    break
  end
  puts "Which city do you want the area code for?"
  city_names(dial_book)
  chosen_city = gets.chomp
  #checks if the chosen city is actually in the hash
  if dial_book.include?(chosen_city)
    puts "The area code for #{chosen_city} is #{result(dial_book,chosen_city)}"
    else
    puts "You entered a city name not in this listing"
  end
end




