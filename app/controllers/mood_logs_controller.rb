class MoodLogsController < ApplicationController
  before_action :set_user, only: %i[new create index]

  def new
    @mood_log = MoodLog.new
  end

  def create
    @mood_log = MoodLog.new(mood_log_params)
    @mood_log.user_id = @user.id
    if @mood_log.save
      redirect_to mood_logs_path
    else
      render "new"
    end
  end

  def index
    @my_mood_logs = @user.mood_logs
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def mood_log_params
    params.require(:mood_log).permit(:user_id, :date, :moods)
  end
end
