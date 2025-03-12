class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :rental_date, presence: true
end
