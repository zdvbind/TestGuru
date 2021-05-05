class QuestionsController < ApplicationController
  before_action :find_test, only: %i[index create]
  before_action :find_question, only: %i[show]

  def index
    render plain: @test.questions.pluck(:body).join("\n")
  end

  def show
    @test = @question.test
    render inline: '<h2> Test: <%= @test.title %></h2> <h4>Question: <%= @question.body %></h4>'
  end

  def new; end

  def create
    @question = @test.questions.build(question_params)
    if @question.save
      redirect_to test_questions_path(@test)
    else
      render plain: "An error occurred while saving question"
    end
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body)
  end
end
