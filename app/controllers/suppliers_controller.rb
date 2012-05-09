class SuppliersController < ApplicationController

  before_filter :signed_in_user,
                :only => [:new, :create, :edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user, :only => :destroy

  def initialize
    super
    @title = "Fishing tackle suppliers" + @title_tail
  end

  def index
    @suppliers = Supplier.all_by_created_time
  end

  def new
    @supplier = Supplier.new
  end

  def edit
  end

  def create
    @supplier = Supplier.new(params[:supplier])
    @supplier.user = current_user

    if @supplier.save
      flash[:success] = "Article was successfully created."
      redirect_to suppliers_path
    else
      render 'new'
    end
  end

  def update
    if @supplier.update_attributes(params[:supplier])
      flash[:success] = "Article was successfully updated."
      redirect_to suppliers_path
    else
      render 'edit'
    end
  end

  def destroy
    Supplier.find(params[:id]).destroy
    flash[:success] = "Supplier destroyed."
    redirect_to suppliers_path
  end

  private

  def correct_user
    @supplier = Supplier.find(params[:id])
    redirect_to(suppliers_path) unless current_user?(@supplier.user)
  end
end
