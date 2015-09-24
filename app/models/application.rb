#require 'json'



puts "Enter a zip code:"
zip = gets.chomp
api = Rain.new(zip)
puts api.get_response
