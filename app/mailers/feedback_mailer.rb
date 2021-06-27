class FeedbackMailer < ApplicationMailer
  default to: -> { Admin.pluck(:email) }

  def feedback(feed, user)
    @user = user
    @feedback = feed[:feedback]
    mail subject: feed[:subj]
  end
end
