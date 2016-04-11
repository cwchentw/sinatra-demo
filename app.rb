# app.rb
require 'sinatra'

disable :show_exceptions

get '/' do
  erb :index
end

# Error page
get '/error-page/?' do
  1 / 0
  redirect to('/')
end

# 404 page
not_found do
  erb :not_found
end

# 50x page
error do
  erb :error
end
