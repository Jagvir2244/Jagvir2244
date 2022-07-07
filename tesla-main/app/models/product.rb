class Product < ApplicationRecord
	validates :name, presence: true
	validates :color, presence: true
	validates :price, presence: true
end
