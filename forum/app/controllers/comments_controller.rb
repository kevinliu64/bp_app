class CommentsController < ApplicationController
  
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comment.create(comment_params)
      redirect_to topic_post_comment    
    end

  def show
    @topic = Topic.find(params[:topic_id])
    if @topic.comments.exists?(id: params[:id])
      @comment = @topic.comments.find(params[:id])
    else
      redirect_to topic_path
  private
    def comment_params
      params.require(:comment).permit(:name. :body)
end

class PostsController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.create(post_params)
    redirect_to topic_path(@topic)
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:id])
    @post.destroy
    redirect_to topic_path(@topic)
  end

  private
    def post_params
      params.require(:post).permit(:poster, :body)
    end
end