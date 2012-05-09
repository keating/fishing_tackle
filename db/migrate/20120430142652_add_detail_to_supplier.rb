class AddDetailToSupplier < ActiveRecord::Migration
  def change
    add_column :suppliers, :detail, :string
  end
end
