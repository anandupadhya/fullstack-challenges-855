class Post
  # TODO: Gather all code from all previous exercises
  # - reader and accessors
  attr_reader :id
  attr_accessor :title, :url, :votes

  # - initialize
  def initialize(attributes = {})
    @id = attributes[:id]
    @url = attributes[:url]
    @votes = attributes[:votes] || 0
    @title = attributes[:title]
  end

  # - self.find
def self.find(id)
    query = "SELECT * FROM posts WHERE id = ?"
    DB.results_as_hash = true
    result = DB.execute(query, id).first

    return nil if result.nil?

    result.transform_keys!(&:to_sym)
    return Post.new(result)

  end

  # - self.all
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

  # - save
  def save
    if @id.nil?
      query = <<-SQL
        INSERT INTO posts (url, votes, title)
        VALUES (?, ?, ?)
      SQL
      DB.execute(query, @url, @votes, @title)
      @id = DB.last_insert_row_id
    else
      query = <<-SQL
        UPDATE posts
        SET url = ?, votes = ?, title = ?
        WHERE id = ?
      SQL
      DB.execute(query, @url, @votes, @title, @id)
    end
  end

  # - destroy
  def destroy
    # TODO: destroy the current instance from the database
    query = "DELETE FROM posts WHERE id = ?"
    DB.execute(query, @id)
  end
end
