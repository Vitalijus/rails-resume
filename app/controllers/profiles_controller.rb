class ProfilesController < ApplicationController
  respond_to :html, :js

  def index
  	@clicks = Profile.all.count
  end

  def create
  	@ip = request.remote_ip.to_s
  	
	  @profile = Profile.new(ip: "#{@ip}")
  	
    if @profile.save
      flash[:notice] = ""
  	  redirect_to :back
    else
      flash[:error] = ""
      redirect_to :back
	  end
  end

  private

  def profile_params
    params.require(:profile).permit(:ip, :counter)
  end
end
