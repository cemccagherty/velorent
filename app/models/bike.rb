class Bike < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  validates :bike_type, :brand, :year, :color, presence: { message: "required field" }
  validates :year, length: { is: 4 }
end
