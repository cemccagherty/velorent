class User < ApplicationRecord
  attr_accessor :login # Allows Devise to accept 'login' as a field

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_one_attached :photo

  # Custom method to authenticate via either username or email
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)

    where(conditions.to_h).where(["lower(email) = :value OR lower(username) = :value", { value: login.downcase }]).first
  end
end
