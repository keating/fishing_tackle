class PagesController < ApplicationController

  def home
    init_home_titles
    common_page
  end

  def search
    if params[:content]
      @articles = Article.where("title ilike '%#{params[:content]}%'")
      @suppliers = Supplier.where("name ilike '%#{params[:content]}%' or name_cn ilike '%#{params[:content]}%'")
      @questions = Question.where("title ilike '%#{params[:content]}%'")
    else
      common_page
    end
    init_search_titles
    render :home
  end

  private
    def common_page
      @articles = Article.all_by_created_time.limit(10)
      @suppliers = Supplier.all_by_created_time.limit(10)
      @questions = Question.all_by_created_time.limit(10)
    end

    def init_home_titles
      @articles_title = 'Latest News'
      @suppliers_title = 'Latest suppliers'
      @questions_title = 'Latest questions'
    end

    def init_search_titles
      @articles_title = 'News Results'
      @suppliers_title = 'Supplier Results'
      @questions_title = 'Question Results'
    end
end
