class RemoveDetailCnFromSuppliers < ActiveRecord::Migration
  def change
    remove_column :suppliers, :detail_cn
  end
end
