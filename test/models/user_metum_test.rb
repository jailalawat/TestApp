# == Schema Information
#
# Table name: user_meta
#
#  id         :bigint(8)        not null, primary key
#  meta_key   :string
#  meta_value :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#
# Indexes
#
#  index_user_meta_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class UserMetumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
