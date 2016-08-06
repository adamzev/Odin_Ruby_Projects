def substrings string, dictionary
  #find words or apostrophes between word boundries
  result = dictionary.zip (dictionary.map do
      |substring| count = string.downcase.scan(substring).length
    end
  )

  result.delete_if{|word_and_count| word_and_count[1] == 0}
  result.to_h
end