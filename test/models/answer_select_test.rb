# == Schema Information
#
# Table name: answer_selects
#
#  id               :integer          not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  answer_choise_id :integer          not null
#  answer_id        :integer          not null
#  question_id      :integer          not null
#
# Indexes
#
#  index_answer_selects_on_answer_choise_id  (answer_choise_id)
#  index_answer_selects_on_answer_id         (answer_id)
#  index_answer_selects_on_question_id       (question_id)
#
# Foreign Keys
#
#  answer_choise_id  (answer_choise_id => answer_choises.id)
#  answer_id         (answer_id => answers.id)
#  question_id       (question_id => questions.id)
#
require 'test_helper'

class AnswerSelectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
