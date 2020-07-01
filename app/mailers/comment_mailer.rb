class CommentMailer < ApplicationMailer
  def comment_mail
    @user = params[:user]

    mail(to: @user.email, subject: "Comments")
  end
end
