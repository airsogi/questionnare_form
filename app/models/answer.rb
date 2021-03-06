# == Schema Information
#
# Table name: answers
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  questionnaire_id :bigint           not null
#  user_id          :bigint           not null
#
# Indexes
#
#  index_answers_on_questionnaire_id  (questionnaire_id)
#  index_answers_on_user_id           (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (questionnaire_id => questionnaires.id)
#  fk_rails_...  (user_id => users.id)
#
class Answer < ApplicationRecord
  belongs_to :questionnaire
  belongs_to :user

  has_many :details, class_name: 'AnswerDetail'
end
