class StaticPagesController < ApplicationController
  def home
    if signed_in?
     @new_calorie_log = CalorieLog.new
     @calorie_logs = current_user.calorie_logs.where('consumed_on > ?', Date.today - 1.month).order('consumed_on DESC')
    end
  end

  def help
  end
end
