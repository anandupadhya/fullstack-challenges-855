require_relative "../views/posts_view"

class PostsController
  def initialize
    @view = PostsView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    @posts = Post.all
    # TODO: give them to the view to be printed
    @view.list_all(@posts)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    title = @view.get_post_title
    # get the url
    # create a new post object and save it to the database
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
  end
end
