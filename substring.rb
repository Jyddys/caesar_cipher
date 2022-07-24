def substrings(string, dictionary)
  result = Hash.new(0)

  dictionary.each do |word|
    matches = word.downcase.scan(word).length
    result[word] = matches unless matches == 0
  end

  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Howdy partner, sit down! How's it going?"
puts substrings("Howdy partner, sit down! How's it going?", dictionary)


