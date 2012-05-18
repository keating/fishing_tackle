class HelpsController < ApplicationController

  before_filter :signed_in_user, :only => [:create]
  before_filter :correct_user, :only => [:destroy]

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

  private

  def correct_user
    @help = Help.find(params[:id])
    redirect_to(root_path) unless ((current_user? @help.user) or (current_user and current_user.admin?))
  end
end
