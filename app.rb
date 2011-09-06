require "sinatra/base"
require "open-uri"

class FetchTweets < Sinatra::Base
  get '/' do
    "Hello World"
  end
  
  get '/:user' do
    open("http://search.twitter.com/search.json?q=#{params[:user]}")
  end
end
