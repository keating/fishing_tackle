class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  def initialize
    super
    @title = 'Fishing Tackle Suppliers | Questions & Help'
    @title_tail = ' | Fishing Tackle'
  end

end
