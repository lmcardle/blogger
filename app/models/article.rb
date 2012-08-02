# == Schema Information
#
# Table name: articles
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  body               :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Article < ActiveRecord::Base
  attr_accessible :title, :body, :tag_list, :image
  
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  
  has_attached_file :image
  
  validates :title, presence: true
  validates :body, presence: true
  
  def tag_list
    return self.tags.join(", ")
  end
  
  def tag_list=(tag_string)
    self.taggings.destroy_all
    
    tag_names = tag_string.split(",").collect { |tag| tag.strip.downcase }.uniq
    
    tag_names.each do |tag_name|
      tag = Tag.find_or_create_by_name(tag_name)
      tagging = self.taggings.new
      tagging.tag_id = tag.id
    end
  end
end
