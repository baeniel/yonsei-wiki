class TopicsController < ApplicationController
  before_action :load_object, only: [:show, :edit, :update, :destroy]

  def index
    @topics = Topic.all
  end

  def show
    @subtopics = Subtopic.where(topic: @topic).page(params[:page]).per(10)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def load_object
    @topic = Topic.find params[:id]
  end
end
