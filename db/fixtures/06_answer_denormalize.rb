require 'yaml'

def build_answer_yaml
  answers = Questionnaire.first.questions.map do |question|
    case question.answer_type
    when 'text', 'long_text'
      {
        question.name => "ありません！"
      }
    when 'check_group', 'radio_group'
      {
        question.name => "はい"
      }
    end
  end

  YAML.dump(answers)
end

questionnaire = Questionnaire.first
answer_yaml = build_answer_yaml

user_count = User.count
answers = (1..user_count).map do |i|
  {
    user_id: i,
    questionnaire_id: questionnaire.id,
    description: answer_yaml,
    created_at: Time.current,
    updated_at: Time.current
  }
end

answers.each_slice(user_count/100) do |block|
  p AnswerDenormalize.insert_all block
end
