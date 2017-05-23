def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(string, time = 2)
  word = Array.new(time, string)
  word.join(" ")
end

def start_of_word(word, n)
  word[0..n - 1]
end

def first_word(word)
  word.split(" ")[0]
end

def titleize(string)
  little_words = [ "and", "over", "the" ]
  words = string.split(" ")
  words.map!.with_index do |word, i|
    if !little_words.include?(word) || i == 0
      word.capitalize!
    else
      word
    end
  end
  words.join(" ")
end
