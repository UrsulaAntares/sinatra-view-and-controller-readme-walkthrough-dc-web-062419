require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ['Ally', "Chelsea", "Julianne", "Carina", "Chris", "Chris", "Malala Yousafzai"]
    erb :friends 

  end
end