require 'sinatra/base'
require_relative './lib/link'
require 'datamapper'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  run! if app_file == $0
end
