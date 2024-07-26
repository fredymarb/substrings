def substrings(word_or_phrase, dictionary)
  # split *(word_or_phrase) into an array
  string_array = word_or_phrase.downcase.split(" ")

  # create an array to store all substrings
  # NOTE: for tallying later
  substrings_array = Array.new

  # itrate *(dictionary) and
  # push all substrings of *(word_or_phrase) to *(substring_array)
  dictionary.each do |word|
    string_array.each do |keyword|
      if keyword.include?(word)
        substrings_array.push(word)
      end
    end
  end

  # tally number of items in *(substrings_array)
  # and put it in a hash *(results)
  results = substrings_array.reduce(Hash.new) do |hash, key|
    hash[key] = substrings_array.count(key)
    hash
  end

  results
end

my_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", my_dictionary)
#{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
