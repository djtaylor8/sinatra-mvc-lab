require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do 
        erb :index
    end

    post '/piglatinize' do 
        text_from_user = params[:user_phrase]
        @user_input = text_from_user 
        @text = PigLatinizer.new
        erb :results
    end

end