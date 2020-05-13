class Question < ApplicationRecord
  belongs_to :questionnaire
  has_many :answer_choises
end
