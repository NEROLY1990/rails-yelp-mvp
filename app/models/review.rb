class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, format: { with: /[0-5]{1}/ }
  
  belongs_to :restaurant, foreign_key: "restaurant_id"

  after_destroy :log_destroy_action

  def log_destroy_action
    return 'Post destroyed'
  end

end
