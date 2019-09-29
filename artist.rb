class Artist < ActiveRecord::Base

  def self.create_table	  def self.create_table
    # create table using SQL here	    sql = <<-SQL
  end	    CREATE TABLE IF NOT EXISTS songs (
      id INTEGER PRIMARY KEY,
      title TEXT,
      length INTEGER
    )
    SQL


    ActiveRecord::Base.connection.execute(sql)
  end
end	end
 6  config/environment.rb 
@@ -8,8 +8,10 @@
require 'bundler/setup'	require 'bundler/setup'
Bundler.require	Bundler.require



# put the code to connect to the database here	# put the code to connect to the database here

connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
  )


require_relative "../artist.rb"	require_relative "../artist.rb"
end
