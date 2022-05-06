class Post
  attr_reader :id
  attr_accessor :title, :url, :votes

  def initialize(attributes = {})
    @id = attributes[:id]
    @url = attributes[:url]
    @votes = attributes[:votes] || 0
    @title = attributes[:title]
  end

  def self.find(id)
    query = "SELECT * FROM posts WHERE id = ?"
    DB.results_as_hash = true
    result = DB.execute(query, id).first

    return nil if result.nil?

    result.transform_keys!(&:to_sym)
    return Post.new(result)
  end

  def destroy
    # TODO: destroy the current instance from the database
    query = "DELETE FROM posts WHERE id = ?"
    DB.execute(query, @id)
  end
end
