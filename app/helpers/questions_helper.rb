module QuestionsHelper
  def question_header(question)
    if question.new_record?
      "#{t(".create")}: #{question.test.title}"
      # "Create new question of #{question.test.title}"
    else
      "#{t(".edit")}: #{question.test.title}"
      # "Edit question of #{question.test.title}"
    end
  end
end
