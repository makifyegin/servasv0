class Country < ApplicationRecord
  has_many :users, dependent: :restrict_with_error  # Prevent deleting a country if users exist
  validates :name, presence: true, uniqueness: true
end
