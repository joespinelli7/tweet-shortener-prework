# Write your code here.
require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string_tweet)
  new_array = []
  array = string_tweet.split(" ")
  array.each do |x|
    if dictionary.include?(x)
      new_array << dictionary.values_at(x)
    else
      new_array << x
    end
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(array_tweet)
  array_tweet.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    new_tweet = tweet[0..139]
  else
    tweet
  end
end
