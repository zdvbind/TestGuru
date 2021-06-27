class FeedbacksController < ApplicationController
  def new; end

  def create
    FeedbackMailer.feedback(feedback_params, current_user).deliver_now
    flash[:notice] = t('.feedback')
    redirect_to root_path
  end

  private

  def feedback_params
    params.permit(:subj, :feedback)
  end
end
