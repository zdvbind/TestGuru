class User < ApplicationRecord
  has_many :test_results, dependent: :destroy
  has_many :tests, through: :test_results, dependent: :destroy
  has_many :author_tests, class_name: 'Test', foreign_key: 'author_id', dependent: :nullify
  def tests_by_level(level)
    Test.joins('JOIN test_results ON tests.id = test_results.test_id')
        .where(tests: { level: level }, test_results: { user_id: id })
  end
end
