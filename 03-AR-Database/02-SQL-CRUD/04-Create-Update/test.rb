require_relative "app/models/post"
require "sqlite3"

db_file_path = File.join(File.dirname(__FILE__), "spec/support/posts_spec.db")
DB = SQLite3::Database.new(db_file_path)

DB.execute('DROP TABLE IF EXISTS `posts`;')
create_statement = "
    CREATE TABLE `posts` (
      `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
      `title` TEXT,
      `url` TEXT,
      `votes`  INTEGER
    );"
DB.execute(create_statement)

# Write your test code here (and run `ruby test.rb` in your terminal to run it):

# create a new post and save
p crud_sucks = Post.new(title: "CRUD Sucks", url: "crudsucks.com")
p crud_sucks.save
p crud_sucks

p post2 = Post.new(title: "Second Post", url: "someething.com")
p post2.save
post2.title = "Second Post (Updated)"
post2.url = "something.com"
p post2.save
p post2.save
p post2.save
p post2.save
p post2.save
