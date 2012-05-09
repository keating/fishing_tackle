class RemovePersonFromSupplier < ActiveRecord::Migration
  def change
    remove_column :suppliers, :person
  end
end
