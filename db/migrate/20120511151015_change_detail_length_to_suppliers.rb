class ChangeDetailLengthToSuppliers < ActiveRecord::Migration
  def change
    change_column :suppliers, :detail, :string, :limit => 10000
  end
end
