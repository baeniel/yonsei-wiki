class SubtopicsController < ApplicationController
  before_action :load_object, only: [:edit, :update, :destroy]

  def index
  end

  def show
    @post = Post.new
    @subtopic = Subtopic.find params[:sub_topic]
    @topic = @subtopic.topic
  end

  def new
    @subtopic = Subtopic.new
  end

  def create
    subtopic = Subtopic.new(subtopic_params)
    subtopic.topic = Topic.find(params[:subtopic][:topic_id])
    subtopic.save
    redirect_to topic_path(subtopic.topic)
  end

  def edit
  end

  def update
    @subtopic.update(subtopic_params)
    redirect_to topic_path(@subtopic.topic), notice: "수정되었습니다."
  end

  def destroy
    @subtopic.destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def load_object
    @subtopic = Subtopic.find params[:id]
  end

  def subtopic_params
    params.require(:subtopic).permit(:title)
  end
end
