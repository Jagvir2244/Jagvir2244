class Product < ApplicationRecord
	validates :name, presence: true
	validates :color, presence: true
	validates_length_of :price, :maximum => 5
	validates_length_of :price, :minimum => 1
end
