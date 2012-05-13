class QuestionsController < ApplicationController

  before_filter :signed_in_user,
                :only => [:new, :create, :edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user, :only => :destroy

  def initialize
    super
    @title = "Fishing tackle questions and answers" + @title_tail
  end

  def index
    @questions = Question.all_by_created_time
  end

  def show
    @question = Question.find(params[:id])
    @help = Help.new
    @title = @question.title + @title_tail
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
    @question = Question.new(params[:question])
    @question.user = current_user

    if @question.save
      flash[:success] = "Question was successfully created."
      redirect_to @question
    else
      render 'new'
    end
  end

  def update
    if @question.update_attributes(params[:question])
      flash[:success] = "Question was successfully updated."
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.helps.each {|help| help.destroy }
    question.destroy
    redirect_to questions_path
  end

  private

  def correct_user
    @question = Question.find(params[:id])
    redirect_to(questions_path) unless current_user?(@question.user)
  end
end
