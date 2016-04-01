class Residue < ActiveRecord::Base

belongs_to :demand
belongs_to :supply
belongs_to :category

end
