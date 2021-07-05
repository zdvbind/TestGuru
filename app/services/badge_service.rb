class BadgeService
  def initialize(test_passage)
    @test_passage = test_passage
    @user = test_passage.user
    @test = test_passage.test
  end

  def call
    Badge.all.each do |badge|
      assign(badge) if send(badge.rule, badge.value)
    end
  end

  def assign(badge)
    @user.badges << badge
  end

  def category(category_id)
    all_test_by_category = Test.where(category_id: category_id).count
    user_all_tests_by_category = TestPassage
                                 .joins(:test)
                                 .where(successfully: true, user_id: @user.id, tests: { category_id: category_id })
                                 .select(:test_id).distinct.count
    all_test_by_category == user_all_tests_by_category
  end

  def level(level)
    all_tests_by_level = Test.where(level: level).count
    user_all_tests_by_level = TestPassage.joins(:test)
                                         .where(successfully: true, user_id: @user.id, tests: { level: level })
                                         .select(:test_id).distinct.count
    all_tests_by_level == user_all_tests_by_level
  end

  def first_attempt(test_id)
    @user.test_passages.where(test_id: test_id).order(updated_at: :asc).first.successfully
  end
end
