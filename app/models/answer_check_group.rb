# == Schema Information
#
# Table name: answer_details
#
#  id               :bigint           not null, primary key
#  text             :string(255)
#  type             :string(255)      not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  answer_choise_id :bigint
#  answer_id        :bigint           not null
#  question_id      :bigint           not null
#
# Indexes
#
#  index_answer_details_on_answer_choise_id  (answer_choise_id)
#  index_answer_details_on_answer_id         (answer_id)
#  index_answer_details_on_question_id       (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_id => answers.id)
#  fk_rails_...  (question_id => questions.id)
#
class AnswerCheckGroup < AnswerDetail
  has_many :checks, class_name: 'AnswerCheckGroupDetail',  foreign_key: 'answer_detail_id'
end
