class ChangeContentLengthToArticle < ActiveRecord::Migration
  def change
    change_column :articles, :content, :string, :limit => 20000
  end
end
