class Bike < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :user
end
