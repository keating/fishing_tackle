class RemoveOtherFromSupplier < ActiveRecord::Migration
  def change
    change_table :suppliers do |t|
      remove_column :suppliers, :other
    end
  end
end
