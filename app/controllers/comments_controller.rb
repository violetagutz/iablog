class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to post_path(@comment.post.id)
  end






  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
