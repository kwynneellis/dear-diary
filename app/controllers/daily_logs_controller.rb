class DailyLogsController < ApplicationController
  before_action :set_user, only: %i[create]
  before_action :set_mood_log, only: %i[create]

  def new
    @daily_log = DailyLog.new
  end

  def create
    @daily_log = DailyLog.new(user_id: @user, mood_log_id: @mood_log)
  end

  def show
    @daily_log = DailyLog.find(params[:id])
  end

  def index
    # @my_daily_logs = @user.daily_logs
    @daily_logs = DailyLog.all
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def set_mood_log
    @mood_log = MoodLog.find(params[:mood_log_id])
  end

  def daily_log_params
    params.require(:daily_log).permit(:user_id, :mood_log_id, :date)
  end
end
