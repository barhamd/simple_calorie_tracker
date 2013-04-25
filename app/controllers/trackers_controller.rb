class TrackersController < ApplicationController
  # before_filter :signed_in_user

  def create
    @tracker = current_user.trackers.build(params[:tracker])
    if @tracker.save
      flash[:success] = "Calories tracked!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end
end
