class HelpsController < ApplicationController

  def create
    @question = Question.find params[:help][:question_id]
    @help = Help.new(params[:help])
    @help.user = current_user

    if @help.save
      redirect_to @question
    else
      render 'questions/show'
    end
  end

  def destroy
    @help = Help.find(params[:id])
    @question = @help.question
    @help.destroy

    redirect_to @question
  end
end
