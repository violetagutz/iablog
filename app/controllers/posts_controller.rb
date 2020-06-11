class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "Article created!"
      redirect_to post_path(@post.id)
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
