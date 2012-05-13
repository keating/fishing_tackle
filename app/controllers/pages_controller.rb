class PagesController < ApplicationController
  def home
    @suppliers = Supplier.all_by_created_time.limit(5)
    @questions = Question.all_by_created_time.limit(5)
  end
end
