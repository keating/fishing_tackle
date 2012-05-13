class ChangeContentLengthToQuestions < ActiveRecord::Migration
  def change
    change_column :questions, :content, :string, :limit => 5000
  end
end
