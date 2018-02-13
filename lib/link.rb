require 'pg'

class Link

  def self.all
    if ENV['RACK_ENV'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test'
    else
     con = PG.connect :dbname => 'bookmark_manager'
    end
    rows = con.exec "SELECT * FROM links;"
    rows.column_values(1)
  end

end
