
def translate(string)
  result = []
  string.split(" ").each do |word|
    capital_boolean = capitalized?(word)
    word.downcase!

    if capital_boolean
      result << latinize(word).capitalize
    else
      result << latinize(word)
    end
  end

  result.join(" ")
end

def vowel?(letter)
  vowels = "aeiou"
  vowels.include?(letter.downcase)
end

def consonant?(letter)
  consonants = ("a".."z").to_a.reject("a", "e", 'i', 'o', 'u')
  consonants << "qu"
  consonants << "sch"
  consonants.include?(letter.downcase)
end

def latinize(word)
  return word + "ay" if word.chars.none? { |letter| vowel?(letter) }
  until vowel?(word[0])
    if word[0..1].downcase == "qu"
      word = word[2..-1] + word[0..1]
    else
      word = word[1..-1] + word[0]
    end
  end
  word + "ay"
end



def capitalized?(word)
  word == word.capitalize
end
