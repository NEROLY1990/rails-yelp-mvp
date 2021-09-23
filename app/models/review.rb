class Review < ApplicationRecord
  belongs_to :Restaurant, class_name: "Restaurant", foreign_key: "Restaurant_id"
end
