class ArticlesController < ApplicationController

  before_filter :signed_in_user,
                :only => [:new, :create, :edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user, :only => :destroy

  def initialize
    super
    @title = "Fishing tackle articles" + @title_tail
  end

  def index
    @articles = Article.all_by_created_time
  end

  def show
    @article = Article.find(params[:id])
    @title = @article.title + @title_tail
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params[:article])
    @article.user = current_user

    if @article.save
      flash[:success] = "Article was successfully created."
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update_attributes(params[:article])
      flash[:success] = "Article was successfully updated."
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    Article.find(params[:id]).destroy
    flash[:success] = "Article destroyed."
    redirect_to articles_path
  end

  private

    def correct_user
      @article = Article.find(params[:id])
      redirect_to(root_path) unless current_user?(@article.user)
    end

end
