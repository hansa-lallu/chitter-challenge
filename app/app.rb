require 'sinatra'
require 'sinatra/activerecord'

# set :database, "postgres:chitter-challenge.postgres"

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'Chitter')

class Chitter < Sinatra::Base 

  get '/' do
    erb :homepage
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/add_user' do
  
  end

end

