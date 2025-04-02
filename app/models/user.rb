class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_one :dashboard, dependent: :destroy
  belongs_to :country
  validates :country_id, presence: true  # Ensure every user must have a country

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
