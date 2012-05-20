class PagesController < ApplicationController
  def home
    @suppliers = Supplier.all_by_created_time.limit(10)
    @questions = Question.all_by_created_time.limit(10)
  end
end
