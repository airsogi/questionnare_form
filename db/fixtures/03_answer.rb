questionnaire = Questionnaire.first

User.all.each do |user|
  answers = Answer.seed(
    questionnaire: questionnaire,
    user: user
  )

  answer = answers.first

  Question.all.each do |question|
    case question.answer_type
    when 'text', 'long_text'
      AnswerText.seed do |s|
        s.answer = answer
        s.question = question
        s.text = "特にありません。"
      end
    when 'check_group', 'radio_group'
      AnswerSelect.seed do |s|
        s.answer = answer
        s.question = question
        s.answer_choise = question.answer_choises.first
      end
    end
  end
end
