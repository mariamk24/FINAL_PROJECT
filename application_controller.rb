require 'bundler'
Bundler.require
require_relative "./models/restaurant.rb"
class ApplicationController < Sinatra::Base

  get '/' do
    erb :home
  end
  get '/restaurant' do
    erb :restaurant
  end
  post '/restaurant' do
  end

end