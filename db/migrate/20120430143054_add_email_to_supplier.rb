class AddEmailToSupplier < ActiveRecord::Migration
  def change
    add_column :suppliers, :email, :string
  end
end
