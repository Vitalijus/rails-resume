class EmailsController < ApplicationController

    def create
    	@email = Email.new(email_params)

	    if @email.save
	    	EmailMailer.email_mailer(@email).deliver
	    	redirect_to root_url, :notice => 'Message was successfully sent.'
	    else
	        redirect_to root_url, :notice => 'Sorry, you have to try again.'
	    end
	end

	private

	 # Never trust parameters from the scary internet, only allow the white list through.
    def email_params
      params.require(:email).permit(:email, :name, :message )
    end
end
