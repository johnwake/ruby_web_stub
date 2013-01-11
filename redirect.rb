require 'sinatra'

get '/' do
  "Welcome to my test Sinatra App"
end

#Displays a static file within the 
get '/example.xml' do
  "example of static pages"
end

#Simple Redirect example
get '/redirect' do
  redirect 'http://www.google.com'
end

#Redirect example, returning a response code value of 301
get '/redirect2' do
  redirect 'http://www.google.com', 301
end

#Single page header set
get '/header' do
  headers "Custom-Value" => "This is a custom HTTP header"
end

#Multiple header values set and redirect
get '/header2' do
  headers "Custom-Value-1" => "Foo", "Custom-Value-1" => "Bar"
  redirect 'http://www.google.com', 301
end

#Setting and deleting cookies

#Setting a cookie value
get '/cookie' do
  response.set_cookie "foo", "bar"
  "Cookie set. Would you like to <a href='/read'>read it</a>?"
end

#Reads from the cookie set above
get '/read' do
  "Cookie has a value of: #{request.cookies['foo']}."
end

#Deleting a cookie
get '/cookie2' do
  response.delete_cookie "foo"
end
