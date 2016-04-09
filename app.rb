# app.rb
require 'sinatra'

get '/' do
  erb :index, :locals => {
    author: "Michael Chen",
    description: "My Website",
    keywords: "Sinatra Demo Website",
    title: "Hello, Sinatra",
    page_title: "Web technologies",
    webs: ["HTML", "CSS", "JavaScript", "Server-side scripting", "Database"]
  }
end
