class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :demand
	has_many :supply
	has_many :alliances_supply, class_name: 'Alliance', foreign_key: "client_supplier_id"
	has_many :alliances_recipient, class_name: 'Alliance', foreign_key: "client_recipient_id"


	mount_uploader :avatar, ProfilePhotoUploader

	devise :omniauthable, :omniauth_providers => [:facebook]

	def self.from_omniauth(auth)
	    where(provider: auth.provider, uid: auth.uid).first_or_create do |client|
	      client.email = auth.info.email
	      client.password = Devise.friendly_token[0,20]
	      client.name_complet = auth.info.name   # assuming the user model has a name
	      client.avatar = auth.info.image # assuming the user model has an image
    	end
	end

	def self.new_with_session(params, session)
    super.tap do |client|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        client.email = data["email"] if client.email.blank?
      end
    end
  end

end
