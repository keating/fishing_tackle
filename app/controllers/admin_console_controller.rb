class AdminConsoleController < ApplicationController

  before_filter :admin_user

  def index
    @suppliers = Supplier.all
  end

end
