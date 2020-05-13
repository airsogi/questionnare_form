# == Schema Information
#
# Table name: answers
#
#  id               :integer          not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  questionnaire_id :integer          not null
#  user_id          :integer          not null
#
# Indexes
#
#  index_answers_on_questionnaire_id  (questionnaire_id)
#  index_answers_on_user_id           (user_id)
#
# Foreign Keys
#
#  questionnaire_id  (questionnaire_id => questionnaires.id)
#  user_id           (user_id => users.id)
#
class Answer < ApplicationRecord
  belongs_to :questionnaire
  belongs_to :user

  def details
    [].concat(
      AnswerText.where(answer_id: id),
      AnswerSelect.where(answer_id: id)
    ).sort_by {|d| d.question_id }
  end
end
