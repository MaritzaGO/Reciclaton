class Alliance < ActiveRecord::Base

	belongs_to :client_supplier, class_name: 'Client', foreign_key: 'client_supplier_id'
	belongs_to :client_recipient, class_name: 'Client', foreign_key: 'client_recipient_id'
	belongs_to :supply
	belongs_to :demand
end
