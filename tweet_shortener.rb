require 'pry'
require 'benchmark'

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  shorten_tweet = tweet
#  puts Benchmark.measure {
#    1000.times do
# 2x faster than convert tweet to array
      dictionary.each do | word,word_to_sub |
        shorten_tweet.gsub!(/\b#{word}\b/i,word_to_sub) #\b space=true \i case=false
      end
    shorten_tweet
#    end
#  }  
#  a_tweet = tweet.split(" ")
#  puts Benchmark.measure {
#    1000.times do
#      a_tweet.each_with_index do |word,index|
#        if word == dictionary.keys
#          a_tweet[index] = dictionary[word]
#        end
#      end
#      return a_tweet.join(" ")
#    end
#  }
end

def bulk_tweet_shortener(tweets)
  shorten_tweets = []
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
<<<<<<< HEAD
  if tweet.length > 140
=======
  if tweet.size > 140
>>>>>>> 2478cdc8425a249f6d96dd1fadcabc9d1e7e0bd4
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
<<<<<<< HEAD
  if word_substituter(tweet).length > 140  
    truncated = word_substituter(tweet).chars[0..136].push("...").join("")
  else 
    word_substituter(tweet) 
  end 
end 
=======
  if tweet.size > 140 
    truncated_tweet = tweet[0..136]+"..."
  end
end
>>>>>>> 2478cdc8425a249f6d96dd1fadcabc9d1e7e0bd4
