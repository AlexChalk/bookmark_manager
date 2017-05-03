require 'rubygems'
require 'data_mapper'
require 'dm-postgres-adapter'

class Tagging
  include DataMapper::Resource

  belongs_to :tag, :key => true
  belongs_to :post, :key => true
end

DataMapper.finalize
DataMapper.auto_upgrade!
DataMapper.setup(:default ENV['DATABASE_URL'] || 'http://localhost/bookmark_manager_#{ENV['RACK_ENV']}')
