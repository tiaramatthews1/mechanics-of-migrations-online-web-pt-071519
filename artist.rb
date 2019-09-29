class Artist < ActiveRecord::Base

  def self.create_table
    sql = <<-SQL
  CREATE TABLE IF NOT EXISTS songs (
      id INTEGER PRIMARY KEY,
      title TEXT,
      length INTEGER
    )
    SQL


    ActiveRecord::Base.connection.execute(sql)
  end
end	