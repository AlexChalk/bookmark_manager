require 'sinatra/base'
require_relative './lib/link'

class BookmarkManager < Sinatra::Base
  enable :sessions
  set :session_secret, 'super-secret'

  get '/' do
  end


  run! if app_file == $0
end
