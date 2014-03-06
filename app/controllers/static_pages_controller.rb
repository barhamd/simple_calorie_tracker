class StaticPagesController < ApplicationController
  def home
    if signed_in?
     @new_calorie_log = CalorieLog.new
     @calorie_logs = current_user.calorie_logs.order('consumed_on DESC').limit(10)
    end
  end

  def help
  end
end
