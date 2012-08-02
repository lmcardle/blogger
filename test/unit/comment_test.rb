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

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
