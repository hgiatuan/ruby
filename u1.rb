# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.


#Tuan Huynh

carl  = {
  :toast => 'cosmos',
  :punctuation => [ ',', '.', '?' ],
  :words => [ 'know', 'for', 'we']
}

sagan = [
  { :are => 'are', 'A' => 'a' },
  { 'waaaaaay' => 'way', :th3 => 'the' },
  'itself',
  { 2 => ['to']}
]

# Here is an example of building a setence out of array/hash pieces.
example = [ 'test', 'a', 'is']
time    = { :that => 'This', :period => '.'}
puts "#{time[:that]} #{example[2]} #{example[1]} #{example[0]}#{time[:period]}"


# Inky is 4 years old, loves reindeers and has 25 dollars in the bank.

# Pinky is 5 years old, loves garden tools and has 14 dollars in the bank.

# Blinky is 7 years old, loves ninjas and has 18.03 dollars in the bank.

# Clyde is 6 years old, loves yarn and has 0 dollars in the bank.



ghosts = [
  {:name => 'Inky', :age => '4', :loves => 'reindeers', :net_worth => '25' },
  {:name => 'Pinky', :age => '5', :loves => 'garden tools', :net_worth => '14'},
  {:name => 'Blinky', :age => '7', :loves => 'ninjas', :net_worth => '18.03'},
  {:name => 'Clyde', :age => '6', :loves => 'yarn', :net_worth => '0'}
        ]


ghosts.each do |ghost|
  ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
  ghost_info += "loves #{ghost[:loves]} and "
  ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
  puts ghost_info
end



require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
#pp dog_breeds # pp stands for pretty print.
breeds = ['brabancon','briard','buhund','bulldog','bullterrier']
dog_breeds["message"].keys.each do |item|
  if breeds.include?(item)
    puts "* "+ item
    if !dog_breeds['message'][item].empty?
      dog_breeds['message'][item].each do |type|
        puts "   * " + type
      end
    end
  end
end


tree_url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
tree_uri = URI(tree_url)
tree_response = Net::HTTP.get(tree_uri)
trees = JSON.parse(tree_response) # Convert JSON data into Ruby data.
count = 0
trees.each do | item |
  if item['common_name'].include?('ash')
    count = count + 1
  end
end
puts count



