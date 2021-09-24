class Restaurant < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :address, presence: true
  
  
  has_many :reviews, dependent: :destroy
end
