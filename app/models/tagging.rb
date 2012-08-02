# == Schema Information
#
# Table name: taggings
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  article_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tagging < ActiveRecord::Base
  attr_accessible :article_id, :tag_id
  
  belongs_to :article
  belongs_to :tag
end
