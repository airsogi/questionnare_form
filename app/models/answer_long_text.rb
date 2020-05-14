# == Schema Information
#
# Table name: answer_details
#
#  id               :bigint           not null, primary key
#  answer_type      :string(255)      not null
#  text             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  answer_choise_id :bigint
#  answer_id        :bigint           not null
#
# Indexes
#
#  index_answer_details_on_answer_choise_id  (answer_choise_id)
#  index_answer_details_on_answer_id         (answer_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_id => answers.id)
#
class AnswerLongText < AnswerDetail
end
