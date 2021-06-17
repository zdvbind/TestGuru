class Gist < ApplicationRecord
  belongs_to :question
  belongs_to :user

  validates :gist_url, presence: true
end
