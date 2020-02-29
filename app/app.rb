require 'sinatra'
require 'sinatra/activerecord'

# set :database, "postgres:chitter-challenge.postgres"

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'Chitter')

class Chitter < Sinatra::Base 


end

