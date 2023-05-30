def sub_string(words, dictionary)

  words_arr = words.split(' ')

  words_count = dictionary.reduce(Hash.new(0)) do |hash, item|
    total = words_arr.reduce(0) do |sum, word|
      if word.downcase.include?(item)
        sum += 1
      else 
        sum = sum
      end
    end
    hash[item] = total if total > 0
    hash
  end
end







