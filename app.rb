require 'sinatra/base'
require 'data_mapper'
require './models/link'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  run! if app_file == $0
end
