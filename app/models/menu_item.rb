class MenuItem < ApplicationRecord
  validates :name, presence:true, uniqueness:true
  validates :price, presence:true, numericality: {greater_than: 0.01}
  validates :description, presence:true, length: {maximum: 150}

has_many :categories
  
end
