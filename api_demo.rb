require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
# url = "https://api.github.com/users/yewonyoana"

# serialized_user = URI.open(url).read

# user = JSON.parse(serialized_user)

# puts "#{user["name"]} - #{user["bio"]} "


puts "Insert a star wars character:"
print "> "
character = gets.chomp

url = "https://swapi.dev/api/people/?search=#{character}"

serialized_character = URI.open(url).read

character_hash = JSON.parse(serialized_character)

character = character_hash["results"][0]

puts "#{character["name"]} has #{character["hair_color"]} hair and #{character["eye_color"]} eyes."
