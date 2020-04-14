def find
    dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
    file = File.open("text.txt")
    file_data = file.readlines.map(&:chomp)
    h = Hash[dictionnary.collect { |item| [item, 0] } ]
    file_data.each do |str|
        dictionnary.each do |word|
            h[word] += str.count word
        end
    end
    file.close
    puts(h)
end

find