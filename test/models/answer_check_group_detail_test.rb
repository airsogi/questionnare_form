# == Schema Information
#
# Table name: answer_check_group_details
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  answer_choise_id :bigint           not null
#  answer_detail_id :bigint           not null
#
# Indexes
#
#  index_answer_check_group_details_on_answer_choise_id  (answer_choise_id)
#  index_answer_check_group_details_on_answer_detail_id  (answer_detail_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_choise_id => answer_choises.id)
#  fk_rails_...  (answer_detail_id => answer_details.id)
#
require 'test_helper'

class AnswerCheckGroupDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
