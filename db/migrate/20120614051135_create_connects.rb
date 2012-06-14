class CreateConnects < ActiveRecord::Migration
  def change
    create_table :connects do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
