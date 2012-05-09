class Question < ActiveRecord::Base
  attr_accessible :content

  validates :content, :presence => true

  has_many :helps
  belongs_to :user

  def self.all_by_created_time
    Question.order('created_at desc')
  end
end
