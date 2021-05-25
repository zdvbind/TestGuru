module TestPassagesHelper
  def message_of_result(test_passage)
    test_passage.test_passed? ? 'passed' : 'failed'
  end
end
