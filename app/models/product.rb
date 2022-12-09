class Product < ApplicationRecord
  has_many :feedbacks
  
	validates :name, presence: true
  validates :feature, presence: true
  validates :price, presence: true

end
