questionnaire = Questionnaire.first

User.all.each do |user|
  answers = Answer.seed(
    questionnaire: questionnaire,
    user: user
  )

  answer = answers.first

  Question.all.each_with_index do |question|
    case question.answer_type
    when 'text', 'long_text'
      AnswerText.seed do |s|
        s.answer = answer
        s.question = question
        s.text = "特にありません。"
      end
    when 'check_group', 'radio_group'
      answer_count = question.answer_choises.count
      choise = question.answer_choises[Random.rand(answer_count)]

      AnswerSelect.seed do |s|
        s.answer = answer
        s.question = question
        s.answer_choise = choise
      end
    end
  end
end
