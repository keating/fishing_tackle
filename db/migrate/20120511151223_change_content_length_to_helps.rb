class ChangeContentLengthToHelps < ActiveRecord::Migration
  def change
    change_column :helps, :content, :string, :limit => 5000
  end
end
