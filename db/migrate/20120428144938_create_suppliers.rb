class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :person
      t.string :tel
      t.string :other

      t.timestamps
    end
  end
end
