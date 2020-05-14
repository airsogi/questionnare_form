require 'yaml'

questionnaire = Questionnaire.first

User.all.each do |user|
  answers = questionnaire.questions.map do |question|
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

  answers = AnswerDenormalize.seed do |s|
    s.questionnaire = questionnaire
    s.user = user
    s.description = YAML.dump(answers)
  end
end
