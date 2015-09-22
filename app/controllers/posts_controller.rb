class PostsController < ApplicationController
  def index
    render template: 'posts/index.html.erb', locals: { posts: Post.all}
  end

  def show
    render template: 'posts/show.html.erb', locals: { posts: Post.find(params[:id])}
  end

  def create


  end
end
