class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comments_params)
    @comment.user_id = current_user.id
    @comment.save

    redirect_to root_path
  end

  private

  def comments_params
    params.require(:comment).permit(:body)
  end
end
