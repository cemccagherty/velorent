class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :rental_date, :rental_date_end, presence: true
  # validates :status, inclusion: { in: %w(created pending confirmed declined) }
end
