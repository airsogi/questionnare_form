# == Schema Information
#
# Table name: answer_details
#
#  id               :integer          not null, primary key
#  answer_type      :string           not null
#  text             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  answer_choise_id :integer
#  answer_id        :integer          not null
#
# Indexes
#
#  index_answer_details_on_answer_choise_id  (answer_choise_id)
#  index_answer_details_on_answer_id         (answer_id)
#
# Foreign Keys
#
#  answer_id  (answer_id => answers.id)
#
require 'test_helper'

class AnswerTextTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
