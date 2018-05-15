class Game < ApplicationRecord
  # Friendly ID
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Associations
  belongs_to :publisher

  # Validations
  validates :name, presence: true
  validates :publisher, presence: true
end