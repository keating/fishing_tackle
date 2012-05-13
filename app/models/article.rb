class Article < ActiveRecord::Base
  attr_accessible :content, :title

  validates :title, :presence => true, :length => {:maximum => 100}, :uniqueness => true
  validates :content, :presence => true, :length => {:maximum => 20000}

  belongs_to :user

  def self.all_by_created_time
    Article.order('created_at desc')
  end

end
