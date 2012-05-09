class AddUserToSupplier < ActiveRecord::Migration
  def change
    change_table :suppliers do |t|
      t.references :user
    end
  end
end
