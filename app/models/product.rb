class Product < ApplicationRecord
  has_many :users
  
	validates :name, presence: true
  validates :feature, presence: true
  validates :price, presence: true

end
