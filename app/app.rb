require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/user'
require_relative './models/message'
require 'bcrypt'


# set :database, "postgres:chitter-challenge.postgres"

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'chitter')

class Chitter < Sinatra::Base 

  enable :sessions

  get '/' do
    @users = User.all
    @messgaes = Message.all
    erb :homepage
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/add_user' do
    new_user = User.create(name: params["new_user_name"],
                           username: params["new_user_username"],
                           email: params["new_user_email"],
                           password: params["new_user_password"])
    redirect '/login'
  end

  get '/login' do
    erb :login
  end

end

