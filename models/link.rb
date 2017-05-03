require 'rubygems'
require 'data_mapper'
require 'dm-postgres-adapter'
class Link

  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String

end

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
DataMapper.finalize
DataMapper.auto_upgrade!
