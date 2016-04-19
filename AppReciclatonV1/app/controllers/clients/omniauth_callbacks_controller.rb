class Clients::OmniauthCallbacksController < Devise::OmniauthCallbacksController

	def facebook
		# Debe crearse el método from_omniauth model (e.g. app/models/client.rb)
	    @client = Client.from_omniauth(request.env["omniauth.auth"])

	    if @client.persisted?
	      sign_in_and_redirect @client, :event => :authentication
	      set_flash_message(:notice, :success, :kind => "Facebook") if
	      is_navigational_format?
	    else
	      session["devise.facebook_data"] = request.env["omniauth.auth"]
	      redirect_to new_client_registration_url
	    end
	  end

	  def failure
	    redirect_to root_path

	end

end