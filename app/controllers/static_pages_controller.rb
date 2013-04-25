class StaticPagesController < ApplicationController
  def home
    if signed_in?
     @tracker = current_user.trackers.build
    end
  end

  def help
  end
end
