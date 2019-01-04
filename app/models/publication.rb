class Publication < ApplicationRecord
  belongs_to :publication_type
  validates :authors, presence: true, length: {maximum: 100}
  validates :date, presence: true, length: {maximum: 100}
  validates :citation, presence: true, length: {maximum: 1500}
  validates :publication_type_id, presence: true, numericality: { only_integer: true }
end
