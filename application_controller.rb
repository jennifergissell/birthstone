require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
post '/monthborn' do
  user_month=params[:month]
  @result=choose_gem(user_month)
  erb :results
end
  
end