class CommentsController < ApplicationController

def show
  render template: 'comments/show.html.erb', locals: { comment: Comment.find(params[:id])}
end

def new
  render template: 'comments/new.html.erb', locals: { comment: Comment.new}
end

def create
  comment = Comment.new
    comment.message   = params.fetch(:comment).fetch(:message)
    comment.save

end


end
