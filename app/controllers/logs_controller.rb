class LogsController < ApplicationController
  before_action :set_topic, only:%i[new create]

  def new
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)
    @log.topic = @topic
    if @log.save
      redirect_to topic_path(@topic)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_topic
    @topic = Topic.find(params[:topic_id])
  end

  def log_params
    params.require(:log).permit(:as_int, :as_string, :as_text, :as_float, :as_duration, :as_boolean, :min_scale, :max_scale, :as_list)
  end
end
