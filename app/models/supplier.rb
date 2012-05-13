class Supplier < ActiveRecord::Base
  attr_accessible :name, :person, :tel, :fax, :email, :address, :detail

  validates :name, :presence => true, :uniqueness => true
  validates :detail, :length => {:maximum => 10000}
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, format: { with: VALID_EMAIL_REGEX },
  #          uniqueness: { case_sensitive: false }

  belongs_to :user

  def self.all_by_created_time
    Supplier.order('created_at desc')
  end
end
