# == Schema Information
#
# Table name: answer_choises
#
#  id          :bigint           not null, primary key
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint           not null
#
# Indexes
#
#  index_answer_choises_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#
require 'test_helper'

class AnswerChoiseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
