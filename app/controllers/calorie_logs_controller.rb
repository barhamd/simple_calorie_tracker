class CalorieLogsController < ApplicationController
  # before_filter :signed_in_user

  def create
    @calorie_log = current_user.calorie_logs.build(params[:calorie_log])
    if @calorie_log.save
      flash[:success] = "Calories tracked!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end

  def edit
    @calorie_log = CalorieLog.find params[:id]
  end

  def update
    @calorie_log = CalorieLog.find params[:id]
    if @calorie_log.update_attributes params[:calorie_log]
      flash[:success] = "Log updated!"
      redirect_to :root
    end
  end

  def index
    @calorie_logs = current_user.calorie_logs.order('consumed_on DESC')
  end
end
