class TestPassage < ApplicationRecord
  PASSING_SCORE = 85

  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :b_valid_set_current_question

  def completed?
    current_question.nil?
  end

  def accept!(answer_ids)
    self.correct_questions += 1 if correct_answer?(answer_ids)

    save!
  end

  def rating
    ((correct_questions.to_f / test.questions.count) * 100).round(2)
  end

  def test_passed?
    rating >= PASSING_SCORE
  end

  def count_of_questions
    test.questions.count
  end

  def current_question_number
    test.questions.index(current_question)+1
  end

  private

  def b_valid_set_current_question
    self.current_question = next_question
  end

  def correct_answer?(answer_ids)
    correct_answers.ids.sort == answer_ids.map(&:to_i).sort
  end

  def correct_answers
    current_question.answers.correct
  end

  def next_question
    if current_question
      test.questions.order(:id).where('id > ?', current_question.id).first
    else
      test.questions.first
    end
  end
end
