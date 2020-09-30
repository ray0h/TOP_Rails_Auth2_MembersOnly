class PostsController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(posts_params)

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
   
  end

  private

  def posts_params
    params.require(:post).permit(:body)
  end

end
