class AddFaxToSupplier < ActiveRecord::Migration
  def change
    add_column :suppliers, :fax, :string
  end
end
