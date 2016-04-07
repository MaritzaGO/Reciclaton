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

end
