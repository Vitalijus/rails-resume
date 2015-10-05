class ProfilesController < ApplicationController
  respond_to :html, :js

  def index
  	@adverts = Profile.all.count
  end

  def create
  	if Profile.exists?(ip: request.remote_ip)
  		
  	else
	  	@profile = Profile.new(ip: request.remote_ip)
	  	@profile.save
	  	redirect_to :back
	end
  end

  private

  def profile_params
    params.require(:profile).permit(:ip, :counter)
  end
end
