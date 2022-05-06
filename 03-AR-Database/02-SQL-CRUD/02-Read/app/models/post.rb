# You can use a global variable, DB, which
# is an instance of SQLite3::Database
# NO NEED TO CREATE IT, JUST USE IT.

class Post
  attr_reader :id
  attr_accessor :title, :url

  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @url = attributes[:url]
    @votes = attributes[:votes]
  end

  def self.find(id)
    # go get the data from the DB
    # query = "SELECT * FROM posts WHERE id = ?"
    # p post = DB.execute(query, id).first
    # return Post.new(id: post[0], title: post[1], url: post[2], votes: post[3])

    query = "SELECT * FROM posts WHERE id = ?"
    DB.results_as_hash = true
    result = DB.execute(query, id).first

    return nil if result.nil?

    result.transform_keys!(&:to_sym)
    return Post.new(result)

  end

  def self.all
    # get data from db
    query = "SELECT * FROM posts"
    DB.results_as_hash = true
    records = DB.execute(query) # returns an array of hashes that represent each row

    # turn each row into instances of Post
    posts = records.map do |record|
      record.transform_keys!(&:to_sym)
      Post.new(record)
    end

    return posts
  end
end
