class TopicsController < ApplicationController
  before_action :set_topic, only: %i[show edit update]

  def index
    @topics = Topic.all
  end

  def show
    @log = Log.new
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    
    if @topic.save
      redirect_to @topic
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @topic.update(topic_params)
      redirect_to @topic
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:name, :description, :is_active, :is_default, :is_int, :is_string, :is_text, :is_float, :is_duration, :is_boolean, :min_scale, :max_scale, :is_list)
  end
end