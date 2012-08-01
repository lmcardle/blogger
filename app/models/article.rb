class Article < ActiveRecord::Base
  attr_accessible :title, :body
  
  has_many :comments
  
  validates :title, presence: true
  validates :body, presence: true
end
