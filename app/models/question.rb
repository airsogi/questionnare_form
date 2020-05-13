# == Schema Information
#
# Table name: questions
#
#  id               :integer          not null, primary key
#  answer_type      :integer
#  condition        :integer
#  description      :string(255)
#  name             :string(100)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  questionnaire_id :integer          not null
#
# Indexes
#
#  index_questions_on_questionnaire_id  (questionnaire_id)
#
# Foreign Keys
#
#  questionnaire_id  (questionnaire_id => questionnaires.id)
#
class Question < ApplicationRecord
  enum answer_type: %i[text long_text check_group radio_group]

  belongs_to :questionnaire
  has_many :answer_choises
end
