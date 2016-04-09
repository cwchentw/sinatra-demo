# app.rb
require 'sinatra'
require 'sinatra/content_for'

get '/' do
  erb :index, :locals => {
    author: "Michael Chen",
    description: "My Website",
    keywords: "Sinatra Demo Website",
    title: "Hello, Sinatra",
    page_title: "My Next Awesome Website",
    page_message: "My website goes from here..."
  }
end
