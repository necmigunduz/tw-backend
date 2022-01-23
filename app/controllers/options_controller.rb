class OptionsController < ApplicationController
    before_action :set_question
    before_action :set_question_option, only: [:show, :update, :destroy]
  
    # GET /questions/:question_id/options
    def index
      json_response(@question.options)
    end
  
    # GET /questions/:question_id/options/:id
    def show
      json_response(@option)
    end
  
    # POST /questions/:question_id/options
    def create
      @question.options.create!(option_params)
      json_response(@question, :created)
    end
  
    # PUT /questions/:question_id/options/:id
    def update
      @option.update(option_params)
      head :no_content
    end
  
    # DELETE /questions/:question_id/options/:id
    def destroy
      @option.destroy
      head :no_content
    end
  
    private
  
    def option_params
      params.permit(:o_text, :score)
    end
  
    def set_question
      @question = Question.find(params[:question_id])
    end
  
    def set_question_option
      @option = @question.options.find_by!(id: params[:id]) if @question
    end
end
