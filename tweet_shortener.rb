# Write your code here.
def word_substituter(tweet)
  dictionary =
    {"hello" => 'hi',
      "to"=> '2',
      "two"=> '2',
      "too" => '2',
      "for"=>'4',
      "four" => '4',
      'be' => 'b',
      'you' => 'u',
      "at" => "@",
      "and" => "&"
    }
  arr_tweet = tweet.split(" ")
  rtnd_twt = Array.new
  nw_wrd = ""
  arr_tweet.collect do |wrd|
    if dictionary.keys.include?(wrd.downcase)
      nw_wrd = dictionary[wrd.downcase]
      rtnd_twt +=[nw_wrd] #not getting the significance of [wrd]using it though
    else
      rtnd_twt +=[wrd]
    end
  end

   rtnd_twt.join(" ")
end

def bulk_tweet_shortener(array)
   array.each do |each_tweet|
     puts word_substituter(each_tweet)
   end
end

def tweet_shortener(tweet)
  if tweet.length <=139
    twt_len =tweet.length
  elsif twt_len >140
    tweet[0...twt_len]
  end
end
