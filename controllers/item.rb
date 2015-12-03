class ListController < ApplicationController

  get '/' do
    @item=Item.all
    erb :read
  end

  get '/create' do
    erb :create
  end

  post '/create' do
    p params
    @item=Item.new
    @item.name=params[:name]
    @item.size=params[:size]
    @item.quantity=params[:quantity]
    @item.save

    @message = "Your Item was added!"
      erb :message

  end

  get '/update/:id' do
    p params
    @item = Item.find(params[:id])
    erb :update
  end

  post '/update' do
    p params
    @item = Item.find(params[:id])
    @item.name=params[:name]
    @item.size=params[:size]
    @item.quantity=params[:quantity]
    @item.save

    @message = 'Your item was updated'
    erb :message
  end

get '/destroy/:id' do
  p params
  @item = Item.find(params[:id])
  erb :destroy
end

post 'destroy/:id' do
  p params
  @item = Item.find(params[:id])
  @item.destroy

@message = 'You have succesfully removed your item'
  # @message = 'You have succesfully removed <%= @item.name %>!'
  erb :message
end

end
