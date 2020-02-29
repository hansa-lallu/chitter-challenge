require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/user'
require_relative './models/message'
require 'bcrypt'


ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'chitter')

class Chitter < Sinatra::Base 

  enable :sessions

  get '/' do
    @user = User.find_by(id: session[:user_id], username: session[:username])
    @messages = Message.order(created_at: :desc)
    p @messages
    erb :homepage
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/add_user' do
    puts params
    user = User.create(name: params["new_user_name"],
                           username: params["new_user_username"],
                           email: params["new_user_email"],
                           password: params["new_user_password"])
    redirect '/login'
  end

  get '/login' do
    erb :login
  end

  post '/validate_user' do 
    if (User.exists?(username: params["username"], password: params["password"]))
      session[:user_id] = User.find_by(username: params["username"]).id
      session[:username] = params["username"]
      redirect '/'
    end
  end

  post '/add_peep' do
    message = Message.create(tweet: params["content"], user_id: session[:user_id])
    redirect '/'
  end

  get '/sessions/destroy' do
    session.clear
    redirect '/'
  end

end

