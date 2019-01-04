class Contact < ApplicationRecord
  TEXT_ONLY_REGEX = /\A[a-zA-Z][\w+\s]+/
  validates :name,  presence: true, length: { maximum: 50 },
                    format: { with: TEXT_ONLY_REGEX },
                    uniqueness: { case_sensitive: true }

  validates :title, presence: true, length: { maximum: 255 }, format: { with: TEXT_ONLY_REGEX }
  validates :unit, presence: true, length: { maximum: 255 }, format: { with: TEXT_ONLY_REGEX }
  validates :institution, presence: true, length: { maximum: 255 }, format: { with: TEXT_ONLY_REGEX }
  validates :city, presence: true, length: { maximum: 255 }, format: { with: TEXT_ONLY_REGEX }
  validates :state, presence: true, length: { maximum: 255 }, format: { with: TEXT_ONLY_REGEX }

  VALID_STREET_REGEX = /\A[0-9][\w+\s]+/
  validates :state, presence: true, length: { maximum: 255 }, format: { with: TEXT_ONLY_REGEX }

  VALID_ZIP_REGEX = /\A([0-9]{5}|[A-Z][0-9][A-Z]\s[0-9][A-Z][0-9])\z/
  validates  :zip, presence: true, format: { with: VALID_ZIP_REGEX }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  VALID_PHONE_REGEX = /[0-9]{3}-[0-9]{3}-[0-9]{4}/
  validates :phone, presence: true, format: { with: VALID_PHONE_REGEX }

end
