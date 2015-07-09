require 'bundler'
Bundler.require

require_relative "./models/restaurant.rb"

class ApplicationController < Sinatra::Base

  get '/' do
    erb :home
  end

  
  post '/restaurant' do
    @foodchoice = params[:foodchoice].split(" ")
    @foodchoice = @foodchoice[rand(@foodchoice.length)]
    erb :displaychoice
  end
  
  get '/restaurant' do
    erb :restaurant
  end
  
  get '/displaychoice' do
    erb :displaychoice
  end

end