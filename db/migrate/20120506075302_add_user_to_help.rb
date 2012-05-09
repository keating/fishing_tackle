class AddUserToHelp < ActiveRecord::Migration
  def change
    change_table :helps do |t|
      t.references :user
    end
  end
end
