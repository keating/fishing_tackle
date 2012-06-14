class SearchController < ApplicationController

  def index
    if params[:content]
      @suppliers = Supplier.where("name ilike '%#{params[:content]}%' or name_cn ilike '%#{params[:content]}%'")
    else
      @suppliers = Supplier.all_by_created_time
    end
    render :template => "suppliers/index"
  end

end
