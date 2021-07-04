class Badge < ApplicationRecord
  RULE_TYPES = %w[category level first_attempt].freeze
  IMAGE_URLS = %w[badges/first_attempt.png badges/level.png badges/category.png].freeze

  has_many :user_badges
  has_many :users, through: :user_badges

  validates :title, :rule, :value, :img_url, presence: true

  def self.images
    IMAGE_URLS
  end
end
