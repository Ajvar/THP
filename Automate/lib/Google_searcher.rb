require 'launchy'

search = "https://www.google.com/search?q="
ARGV.each do |n|
    search << "+#{n}"
end
Launchy.open(search)