p "Setting up test database..."

require 'pg'

connection = PG.connect(dbname: 'bookmark_manager_test')

connection.exec("TRUNCATE links;")

connection.exec("INSERT INTO links(url) VALUES ('https://www.makersacademy.com');")
connection.exec("INSERT INTO links(url) VALUES ('https://www.google.com');")
connection.exec("INSERT INTO links(url) VALUES ('https://www.facebook.com');")
