class StaticPagesController < ApplicationController
  def home
    if signed_in?
     @tracker = Tracker.new
    end
  end

  def help
  end
end
