class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  def initialize
    super
    @title = 'Fishing Tackle Articles | Suppliers | Questions & Help'
    @title_tail = ' | Fishing Tackle'
  end

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end
end
