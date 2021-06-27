class FeedbackMailer < ApplicationMailer
  def feedback(feed, user)
    @user = user
    @feedback = feed[:feedback]
    @admin = User.where(type: :Admin).order(created_at: :desc).limit(1).first
    mail to: @admin.email, subject: feed[:subj]
  end
end
