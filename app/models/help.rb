class Help < ActiveRecord::Base
  attr_accessible :content, :question_id

  validates :content, :presence => true

  belongs_to :question
  belongs_to :user
end
