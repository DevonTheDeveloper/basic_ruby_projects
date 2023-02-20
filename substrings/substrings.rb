def substrings(str, dictionary)
  # case-insensitive input
  str = str.downcase
  # display results in hash
  result = Hash.new(0)
  # handles multiple words
  dictionary.each do |word|
  # count amount of matches
    matches = str.scan(word).count
    result[word] = matches unless matches == 0
  end

  return result
end