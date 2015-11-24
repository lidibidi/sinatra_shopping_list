require 'bundler'
Bundler.require

get 'resource' do
  erb :layout
end

get '/' do
return 'Hello, world'
end

get '/home' do
  erb :home
end

get '/login' do
  erb :login
end

get '/registration' do
  erb :erb
end
