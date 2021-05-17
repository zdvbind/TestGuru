class QuestionsController < ApplicationController
  before_action :find_test, only: %i[create]
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found


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

  def destroy
    @question.destroy
    redirect_to test_questions_path(@test)
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

  def rescue_with_question_not_found
    render plain: 'Question not found'
  end
end
