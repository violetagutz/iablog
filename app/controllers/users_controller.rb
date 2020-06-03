class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
   @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_user_with_image(params[:image], user_params)
      flash[:success] = "Profile Updated!"
      redirect_to @user
    else
      render 'edit'
    end
  end

 private

   def user_params
     params.require(:user).permit(:name, :username, :location, :image)
   end
end

