class ProfilesController < ApplicationController
  respond_to :html, :js

  def index
  	@adverts = Profile.all.count
  	@new_email = Profile.new
  	#EmailMailer.request(@new_email).deliver
  end

  def create
  	@ip = request.remote_ip.to_s
  	
  	if Profile.exists?(ip: "#{@ip}")
  		redirect_to :back
  	else
	  	@profile = Profile.new(ip: "#{@ip}")
	  	@profile.save
	  	redirect_to :back
	end
  end

  private

  def profile_params
    params.require(:profile).permit(:ip, :counter)
  end
end
