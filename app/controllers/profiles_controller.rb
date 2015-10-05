class ProfilesController < ApplicationController
  respond_to :html, :js

  def index
  	@adverts = Profile.all.count
  end

  def create
  	ip = request.remote_ip.to_s
  	if Profile.exists?(ip: "#{ip}")
  		
  	else
	  	@profile = Profile.new(ip: "#{ip}")
	  	@profile.save
	  	redirect_to :back
	end
  end

  private

  def profile_params
    params.require(:profile).permit(:ip, :counter)
  end
end
