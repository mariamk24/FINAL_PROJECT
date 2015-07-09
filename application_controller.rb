require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :home
  end

end