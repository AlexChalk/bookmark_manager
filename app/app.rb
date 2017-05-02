require 'sinatra/base'
require 'data_mapper'
require './models/link'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :links
  end

  run! if app_file == $0
end
