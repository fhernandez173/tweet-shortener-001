require 'pry'

def dictionary
  {
    "hello" => "hi",
    "to" => '2',
    "too" => '2',
    "two" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }
end

def word_substituter(sentence)
  # Turn the sentence in an array of words
  new_sentence = sentence.split
  new_sentence.each do |word|
    tweet_word = word.downcase
    # if a word a key from dictionary, replace it with dictionary's value
    # Check if the uppercase word is equal to word in dictionaries, then downcase
    if dictionary.has_key?(tweet_word)
      # binding.pry
      word.sub!(word, dictionary[tweet_word])
    end
    # Join the array again and return it
  end.join(' ')
end

def bulk_tweet_shortener(tweet)
  tweet.each do |sentence|
    new_sentence = word_substituter(sentence)
    puts new_sentence
  end
  # binding.pry
end

def selective_tweet_shortener(tweet)
  # binding.pry
  if tweet.length > 140 # character count more than 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)
    if tweet.length > 140
      tweet[0...140]
    end
  else
    tweet
  end
end













#
#



