ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base
  before { @links = Link.all }

  get '/' do
    redirect '/links'
  end

  get '/links' do
    erb :'links/index'
  end

  post '/links' do
    tag  = Tag.create(name: params[:link_tag])
    link = Link.create(title: params[:link_name], url: params[:link_url], tags: [tag])
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/new'
  end


  run! if app_file == $0
end
