require "sinatra/base"
require "open-uri"

class FetchTweets < Sinatra::Base
  get '/:user' do
    open("http://search.twitter.com/search.json?q=#{params[:user]}")
  end
end

FetchTweets.run!