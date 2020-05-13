# == Schema Information
#
# Table name: questionnaires
#
#  id         :integer          not null, primary key
#  name       :string(30)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Questionnaire < ApplicationRecord
  has_many :questions
  has_many :answers
end
