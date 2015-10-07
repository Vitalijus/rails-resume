class EmailsController < ApplicationController

    def create
    	#@email_seller = @advert.email_sellers.create(email_seller_params)
    	@email = Email.new(email_params)

		respond_to do |format|
	      if @email.save
	      	EmailMailer.request(@email).deliver
	        format.html { redirect_to(@advert, :notice => 'Message was successfully sent.') }
	        format.xml  { render :xml => @advert, :status => :created, :location => @advert }
	      else
	        format.html { render :template => "adverts/show" }
	        format.xml  { render :xml => @email_seller.errors, :status => :unprocessable_entity }
	      end
	    end
	end

	private

	 # Never trust parameters from the scary internet, only allow the white list through.
    def email_params
      params.require(:email).permit(:email, :name, :message )
    end
end
