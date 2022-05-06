class PostsView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
  def list_all(posts)
    puts posts
  end

  def get_post_title
    puts "Title:"
    gets.chomp
  end
end
