require 'rubygems'
require 'data_mapper'
require 'dm-postgres-adapter'

class Tag
  include DataMapper::Resource

  property :id, Serial
  property :name, Text

  has n, :taggings
  has n, :posts, :through => :taggings
end

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'http://localhost/bookmark_manager_#{ENV['RACK_ENV']}'
DataMapper.finalize
DataMapper.auto_upgrade!
