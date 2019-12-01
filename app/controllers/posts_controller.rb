class PostsController < ApplicationController
  before_action :load_object, only: [:show, :destroy, :edit, :update]

  def create
    post = Post.new(post_params)
    post.subtopic = Subtopic.find params[:post][:subtopic_id]
    @subtopic = post.subtopic
    post.save
    @posts = Post.page(params[:page]).per(10)
  end

  def show
  end

  def edit
  end

  def update
    @post.update_attributes!
    redirect_to subtopic_path(@post.subtopic)
  end

  def destroy
    @subtopic = @post.subtopic
    @posts = Post.page(params[:page]).per(10)
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

  def load_object
    @post = Post.find params[:id]
  end
end
