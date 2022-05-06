class PostsController
  def initialize
    @view = PostsView.new
  end

  ################################################################
  # BEWARE: you MUST NOT use the global variable DB in this file #
  ################################################################

  def index
    # TODO: implement listing all posts
    # fetch all the posts from the model (Post.all)
    posts = Post.all
    # pass that array to view
    @view.list_all(posts)
  end

  def create
    # TODO: implement creating a new post
  end

  def update
    # TODO: implement updating an existing post
  end

  def destroy
    # TODO: implement destroying a post
  end

  def upvote
    # TODO: implement upvoting a post
  end
end
