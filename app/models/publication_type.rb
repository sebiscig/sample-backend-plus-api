class PublicationType < ApplicationRecord
  has_many :publications
  validates :kind, presence: true, length: {maximum: 100}
  validates :rank, presence: true, numericality: { only_integer: true }
end
