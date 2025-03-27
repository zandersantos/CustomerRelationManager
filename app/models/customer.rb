class Customer < ApplicationRecord
  has_one_attached :image

  validates :FullName, presence: true

  validates :EmailAddress, uniqueness: true
  def self.ransackable_attributes(auth_object = nil)
    ["EmailAddress", "FullName", "Notes", "PhoneNumber", "created_at", "id", "updated_at"]
  end
end
