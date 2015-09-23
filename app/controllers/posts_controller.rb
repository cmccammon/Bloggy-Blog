class PostsController < ApplicationController
  def index
    render template: 'posts/index.html.erb', locals: { posts: Post.all}
  end

  def show
    post_title = Post.all.map { |u| [u.title, u.id] }
    render template: 'posts/show.html.erb', locals: { posts: Post.find(params[:id]), comment: Comment.new, post_title: post_title}

  end

  def new
    render template: 'posts/new.html.erb', locals: { posts: Post.new}
  end
  def create
    post = Post.new
      post.title   = params.fetch(:post).fetch(:title)
      post.body   = params.fetch(:post).fetch(:body)
      post.published = false
      if post.save
        redirect_to post_path(post)
      else
        redirect_to posts_path
    end
  end

end
