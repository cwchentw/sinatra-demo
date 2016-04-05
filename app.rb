# app.rb
require 'sinatra'

get '/' do
  @title = "Hello, Web Programming"
  @page_title = "Web technologies"
  @webs = ["HTML", "CSS", "JavaScript", "Server-side scripting", "Database"]
  erb :index
end

get '/about' do
  @title = "About this site"
  @page_title = "About This Site"
  @message = "This site introduces web technologies."
  erb :about
end
