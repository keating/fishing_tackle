class CreateHelps < ActiveRecord::Migration
  def change
    create_table :helps do |t|
      t.string :content
      t.integer :question_id

      t.timestamps
    end
  end
end
