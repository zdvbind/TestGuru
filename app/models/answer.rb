class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true

  validate :validate_max_count, on: :create

  scope :correct, -> { where(correct: true) }

  private

  def validate_max_count
    errors.add(:count, 'too many answers - max 4') if question.answers.count > 3
  end
end
