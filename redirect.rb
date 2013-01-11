require 'sinatra'

get '/' do
  "Welcome to my test Sinatra App"
end

get '/example.xml' do
  "example of static pages"
end

get '/redirect' do
  redirect 'http://www.google.com'
end

get '/redirect2' do
  redirect 'http://www.google.com', 301
end
