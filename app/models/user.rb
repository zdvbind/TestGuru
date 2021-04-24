class User < ApplicationRecord
  def tests_by_level(level)
    Test.joins('JOIN test_results ON tests.id = test_results.test_id')
        .where(tests: { level: level }, test_results: { user_id: id })
  end
end
