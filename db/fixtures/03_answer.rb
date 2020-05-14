questionnaire = Questionnaire.first

def random_response_text
  [
    '特にありません',
    'なし'
  ][Random.rand(2)]
end

def create_answer_text(answer)
  AnswerText.seed do |s|
    s.answer_type = :text
    s.answer = answer
    s.text = random_response_text
  end
end

def create_answer_radio_group(answer, question)
  answer_count = question.answer_choises.count
  choise = question.answer_choises[Random.rand(answer_count)]

  AnswerRadioGroup.seed do |s|
    s.answer_type = :radio_group
    s.answer = answer
    s.answer_choise = choise
  end
end

User.all.each do |user|
  answers = Answer.seed do |s|
    s.questionnaire = questionnaire
    s.user = user
  end

  answer = answers.first

  Question.all.each_with_index do |question|
    case question.answer_type
    when 'text'
      create_answer_text(answer)
    when 'radio_group'
      create_answer_radio_group(answer, question)
    end
  end
end
