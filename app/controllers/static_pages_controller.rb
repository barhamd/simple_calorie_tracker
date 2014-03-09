class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @new_calorie_log = CalorieLog.new
      @calorie_logs = current_user.calorie_logs.where('consumed_on > ?', Date.today - 1.month).order('consumed_on DESC')
      @data_array =[]
      @calorie_logs.group_by(&:consumed_on).each do |date, calorie_log|
        @data_array << [date.to_time.to_i*1000, calorie_log.sum(&:calories)]
      end
    end
  end

  def help
  end
end
