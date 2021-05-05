class QuestionsController < ApplicationController
  before_action :find_test, only: %i[index]

  def index
    render plain: @test.questions.pluck(:body).join("\n")
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end
end
