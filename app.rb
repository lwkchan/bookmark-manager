require 'sinatra/base'
require './lib/link.rb'

class Bookmark < Sinatra::Base

  get "/" do
    @link_array = Link.all
    erb :index
  end

  post '/add-link' do
    new_link = params[:link]
    Link.add(new_link)
    redirect("/")
  end

run! if app_file == $0
end
