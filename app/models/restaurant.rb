class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(french italian belgian chinese japanese)}
  has_many :reviews, dependent: :destroy
end
