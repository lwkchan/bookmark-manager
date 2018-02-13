require 'pg'

class Link

  def self.all
    # if ENV['RACK_ENV'] == 'test'
    #   con = PG.connect :dbname => 'bookmark_manager_test'
    # else
    #   con = PG.connect :dbname => 'bookmark_manager'
    # end
    con = determine_database
    rows = con.exec "SELECT * FROM links;"
    rows.column_values(1)
  end

  def self.add(link)
    con = determine_database
    con.exec "INSERT INTO links (url) VALUES ('#{link}')"
  end

  private

  def self.determine_database
    if ENV['RACK_ENV'] == 'test'
      PG.connect :dbname => 'bookmark_manager_test'
    else
      PG.connect :dbname => 'bookmark_manager'
    end
  end

end
