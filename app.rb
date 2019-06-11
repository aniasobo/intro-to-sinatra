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

get '/random-cat' do
  @names = %w(Kluski Pierogi Keanu).sample
  erb(:index) 
end

get '/named-cat' do
  p params
  
  @names = params[:names]
  erb(:index) 
end

# " 