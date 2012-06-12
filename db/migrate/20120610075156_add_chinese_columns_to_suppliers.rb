class AddChineseColumnsToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :name_cn, :string
    add_column :suppliers, :detail_cn, :text
  end
end
