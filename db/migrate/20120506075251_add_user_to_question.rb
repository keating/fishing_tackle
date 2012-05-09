class AddUserToQuestion < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.references :user
    end
  end
end
