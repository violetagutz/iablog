class CommentMailer < ApplicationMailer
  def comment_mail
    @user = params[:user]
    @post = params[:post]
    mail(to: @user.email, subject: "Comments")
  end
end
