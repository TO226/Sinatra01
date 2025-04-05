require 'sinatra'
require 'sinatra/reloader'
require 'open-uri'

get '/' do
  'Hello world!'
end

get '/foo' do
    URI.open("https://realestate.oriolecorporation.com/").read
end

get '/hello/:name' do
    # matches "GET /hello/foo" and "GET /hello/bar"
    # params['name'] is 'foo' or 'bar'
    "Hello #{params['name']}!"+["大吉", "中吉", "小吉"].sample
end