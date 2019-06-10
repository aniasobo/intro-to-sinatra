require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  'testing'
end

get '/test' do
  'bla bla bla'
end

get '/cat' do
  erb(:index) 
end

# " 