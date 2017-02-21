require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    new_stuff = PigLatinizer.new
    # binding.pry
   @pig_latin = new_stuff.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end
end
