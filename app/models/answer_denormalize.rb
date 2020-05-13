# == Schema Information
#
# Table name: answer_denormalizes
#
#  id               :integer          not null, primary key
#  description      :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  questionnaire_id :integer          not null
#  user_id          :integer          not null
#
# Indexes
#
#  index_answer_denormalizes_on_questionnaire_id  (questionnaire_id)
#  index_answer_denormalizes_on_user_id           (user_id)
#
# Foreign Keys
#
#  questionnaire_id  (questionnaire_id => questionnaires.id)
#  user_id           (user_id => users.id)
#
class AnswerDenormalize < ApplicationRecord
  belongs_to :questionnaire
  belongs_to :user
end
