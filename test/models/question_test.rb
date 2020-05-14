# == Schema Information
#
# Table name: questions
#
#  id               :bigint           not null, primary key
#  answer_type      :integer
#  condition        :integer
#  description      :string(255)
#  name             :string(100)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  questionnaire_id :bigint           not null
#
# Indexes
#
#  index_questions_on_questionnaire_id  (questionnaire_id)
#
# Foreign Keys
#
#  fk_rails_...  (questionnaire_id => questionnaires.id)
#
require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
