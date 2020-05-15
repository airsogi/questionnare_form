# require 'yaml'
#
# questionnaire = Questionnaire.first
#
# answers = questionnaire.questions.map do |question|
#   case question.answer_type
#   when 'text', 'long_text'
#     {
#       question.name => "ありません！"
#     }
#   when 'check_group', 'radio_group'
#     {
#       question.name => "はい"
#     }
#   end
# end
#
# yaml = YAML.dump(answers)
#
# user_count = User.count
# answers = (1..user_count).map do |i|
#   {
#     user_id: i,
#     questionnaire_id: questionnaire.id,
#     description: yaml,
#     created_at: Time.current,
#     updated_at: Time.current
#   }
# end
#
# AnswerDenormalize.insert_all answers
