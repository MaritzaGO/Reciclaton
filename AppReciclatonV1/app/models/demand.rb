class Demand < ActiveRecord::Base

	belongs_to :client
	has_one :residue
	has_many :alliances
end
