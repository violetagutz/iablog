class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    comment = Comment.new(comment_params)
    comment.user_id = current_user.id
    user = comment.post.user
    if comment.save
      CommentMailer.with(user: user).comment_mail.deliver_now
      redirect_to post_path(comment.post.id)
    end
  end


  def destroy
    comment = Comment.find(params[:id])
    post = comment.post
    comment.destroy
    if comment.destroyed?
      flash[:notice] = "Comment deleted"
    end
    redirect_to post_path(post.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
