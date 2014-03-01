class StaticPagesController < ApplicationController
  def home
    if signed_in?
     @calorie_log = CalorieLog.new
    end
  end

  def help
  end
end
