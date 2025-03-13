class Bike < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  validates :bike_type, :price, :brand, :year, :color, presence: true
  validates :year, length: { is: 4 }
  validates :price, numericality: true

  include PgSearch::Model
  pg_search_scope :search_by_bike_type_and_brand,
                  against: [ :bike_type, :brand ],
                  using: {
  tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
