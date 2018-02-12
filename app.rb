require 'sinatra/base'
require './lib/link.rb'

class Bookmark < Sinatra::Base

  get "/" do
    Link.create
    @link_array= Link.all
    erb :index
  end

run! if app_file == $0
end
