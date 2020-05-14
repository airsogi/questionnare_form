# == Schema Information
#
# Table name: answer_denormalizes
#
#  id               :bigint           not null, primary key
#  description      :text(65535)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  questionnaire_id :bigint           not null
#  user_id          :bigint           not null
#
# Indexes
#
#  index_answer_denormalizes_on_questionnaire_id  (questionnaire_id)
#  index_answer_denormalizes_on_user_id           (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (questionnaire_id => questionnaires.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class AnswerDenormalizeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
