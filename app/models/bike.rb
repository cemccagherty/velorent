class Bike < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  # Existing validations remain the same
  validates :bike_type, :price, :brand, :year, :color, :area, presence: true
  validates :year, length: { is: 4 }
  validates :price, numericality: true

  # Add a class-level constant for areas
  LONDON_AREAS = [
    'Camden', 'Hackney', 'Kensington',
    'Islington', 'Southwark', 'Westminster',
    'Lambeth', 'Shoreditch', 'Brixton'
  ]

  # Optional: Validate area is from London areas
  validates :area, inclusion: { in: LONDON_AREAS }

  include PgSearch::Model
  pg_search_scope :search_by_bike_type_and_brand,
                  against: [:bike_type, :brand],
                  using: {
                    tsearch: { prefix: true }
                  }
end
