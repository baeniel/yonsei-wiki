class PostsController < ApplicationController

  def create
    post = Post.new(post_params)
    post.subtopic = Subtopic.find params[:post][:subtopic_id]
    post.save

    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
