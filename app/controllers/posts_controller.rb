class PostsController < ApplicationController
  def index
    render locals: { posts: Post.all.order('id DESC') }
  end

  def show
    post_title = Post.all.map { |u| [u.title, u.id] }
      render locals: { posts: Post.find(params[:id]), comment: Comment.new, post_title: post_title}

  end

  def new
    render locals: { posts: Post.new}
  end
  def create
    post = Post.new
      post.title  = params.fetch(:post).fetch(:title)
      post.body   = params.fetch(:post).fetch(:body)
      post.published = false
      if post.save
        redirect_to post_path(post)
      else
        redirect_to posts_path
    end
  end

end
