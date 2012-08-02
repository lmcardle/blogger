# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  article_id  :integer
#  author_name :string(255)
#  body        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :author_name, :body
  
  belongs_to :article
end
