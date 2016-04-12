# app.rb
require 'sinatra'
require 'sinatra/content_for'

disable :show_exceptions

set :show_exceptions, false

# Shared variables of all HTTP actions
before do
  @title = "My Next Awesome Website",
  @author = "Michael Chen",
  @description = "My Next Awesome Website starts from here",
  @keywords = "awesome,wonderful,fantastic"
end

get '/' do
  @page_title = "My Next Awesome Site"
  @page_message = "Welcome to my next awesome site"
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
