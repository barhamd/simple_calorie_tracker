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
end
