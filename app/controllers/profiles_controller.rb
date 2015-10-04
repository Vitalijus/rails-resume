class ProfilesController < ApplicationController
  respond_to :html, :js

  def index
  	@adverts = Profile.all.count
  end

  def create
  	@profile = Profile.new
  	@profile.save
  	redirect_to :back
  end

  private

  def profile_params
    params.require(:profile).permit(:ip, :counter)
  end
end
