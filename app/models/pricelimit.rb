class Pricelimit < ActiveRecord::Base
	validates :price , uniqueness: true
end
