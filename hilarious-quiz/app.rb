# require './lib/*'
require 'sinatra'
require 'bundler'
Bundler.require

class Weird < Sinatra::Application
  get '/veg' do
    erb :index
  end

  post '/weird' do
    erb :results
  end
end