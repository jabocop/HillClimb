class TracksController < ApplicationController
  before_filter :signed_in_user, only: [:index,:new,:crete]
  before_filter :admin_user,     only: [:index,:new,:crete]
  
  def new
    @track = Track.new
  end
  def create
    @track = Track.new(params[:track])
    if @track.save
      flash[:success] = "Track added"
      redirect_to tracks_path
    else
      render 'new'
    end
  end
  def index
    @tracks=Track.all
  end
end
