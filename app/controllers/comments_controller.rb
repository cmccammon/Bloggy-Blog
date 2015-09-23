class CommentsController < ApplicationController


 def create
    comment = Comment.new
    comment.message   = params.fetch(:comment).fetch(:message)
    comment.post_id = params.fetch(:comment).fetch(:post_id)
    comment.save
    #   flash[:notice] = 'Comment was successfully created.'
    redirect_to :back
    # else
    #   flash[:notice] = "Error creating comment: #{comment.errors}"
    #   redirect_to(comment.post)
    # end
 end


end
