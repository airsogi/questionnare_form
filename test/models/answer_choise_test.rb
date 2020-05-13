# == Schema Information
#
# Table name: answer_choises
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer          not null
#
# Indexes
#
#  index_answer_choises_on_question_id  (question_id)
#
# Foreign Keys
#
#  question_id  (question_id => questions.id)
#
require 'test_helper'

class AnswerChoiseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
