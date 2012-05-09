class PagesController < ApplicationController
  def home
    @articles = Article.all_by_created_time
  end
end
