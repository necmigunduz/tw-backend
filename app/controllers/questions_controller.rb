class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :destroy]

  # GET /questions
  def index
    @questions = Question.all
    json_response(QuestionSerializer.new(@questions).serialized_json)
  end

  # GET /questions/:id
  def show
    json_response(QuestionSerializer.new(@question).serialized_json)
  end

  # # POST /questions
  # def create
  #   @question = Question.create!(question_params)
  #   json_response(@question, :created)
  # end

  # # PUT /questions/:id
  # def update
  #   @question.update(question_params)
  #   head :no_content
  # end

  # # DELETE /questions/:id
  # def destroy
  #   @question.destroy
  #   head :no_content
  # end

  private

  def question_params
    # whitelist params
    params.permit(:q_text, :image)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
