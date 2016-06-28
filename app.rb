require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do 
    #create new PigLatinizer class
    result = PigLatinizer.new
    #set object's phrase to pig latinized phrase
    @final_result = result.to_pig_latin(params["user_phrase"])

    erb :result
  end

end