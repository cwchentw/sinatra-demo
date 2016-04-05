require 'sinatra'

get '/' do
  @message = "Hello, ERB"
  erb :index
end
