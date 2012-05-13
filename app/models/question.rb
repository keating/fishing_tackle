class Question < ActiveRecord::Base
  attr_accessible :title, :content

  validates :title, :presence => true, :length => {:maximum => 80}
  validates :content, :presence => true, :length => {:maximum => 5000}

  has_many :helps
  belongs_to :user

  def self.all_by_created_time
    Question.order('created_at desc')
  end
end
