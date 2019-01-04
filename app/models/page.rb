class Page < ApplicationRecord
  VALID_TITLE_REGEX = /\A[a-zA-Z][\w+\s]+/
  validates :title, presence: true, length: {maximum: 100},
            format: { with: VALID_TITLE_REGEX }, uniqueness: { case_sensitive: false }
  validates :heading, presence: true, length: {maximum: 100},
                      format: { with: VALID_TITLE_REGEX }
  validates :blurb, presence: true, length: {maximum: 25000}
            #format: { with: VALID_CONTENT_REGEX}
end
