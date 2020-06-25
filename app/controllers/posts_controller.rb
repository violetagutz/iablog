class PostsController < ApplicationController
  before_action :authenticate_user!
  #return list of posts
  def index
    #ask for an user with user_id, if its true, get it using a hash id as a key and params with the  value)
    if params[:user_id]
      user = User.find_by(id: params[:user_id])
      #get post of that single user(asigned already above) or just using user.posts
      @posts = Post.where({user_id: user.id})
      if user == current_user
        @page_title = "My Articles"
      else
        @page_title = "Articles written by #{user.name}"
      end
    else
      #if theres no user id show all posts of all users
      @posts = Post.all
      @page_title = "All Articles"
    end
  end

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
    @user = @post.user
    @comment = Comment.new
    @comments = Comment.where(post_id: @post.id)
  end

private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
