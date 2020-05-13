# == Schema Information
#
# Table name: answer_texts
#
#  id          :integer          not null, primary key
#  text        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  answer_id   :integer          not null
#  question_id :integer          not null
#
# Indexes
#
#  index_answer_texts_on_answer_id    (answer_id)
#  index_answer_texts_on_question_id  (question_id)
#
# Foreign Keys
#
#  answer_id    (answer_id => answers.id)
#  question_id  (question_id => questions.id)
#
require 'test_helper'

class AnswerTextTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
