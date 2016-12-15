class Pilgrim < ActiveRecord::Base
	belongs_to :packages
	has_many :copilgrims, class_name: "Pilgrim", foreign_key: :copilgrim_id
	accepts_nested_attributes_for :copilgrims, :allow_destroy => true
end
