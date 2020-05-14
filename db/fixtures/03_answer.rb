questionnaire = Questionnaire.first

def random_response_text
  [
    '特にありません',
    'なし',
    '未回答'
  ][Random.rand(2)]
end

def create_answer_text(question, answer)
  AnswerText.seed do |s|
    s.question = question
    s.answer = answer
    s.text = random_response_text
  end
end

def create_answer_radio_group(question, answer)
  answer_count = question.answer_choises.count
  choise = question.answer_choises[Random.rand(answer_count)]

  AnswerRadioGroup.seed do |s|
    s.question = question
    s.answer = answer
    s.answer_choise = choise
  end
end

def create_answer_check_group(question, answer)
  check_groups = AnswerCheckGroup.seed do |s|
    s.question = question
    s.answer = answer
  end

  check_group = check_groups.first
  choises = question.answer_choises

  AnswerCheckGroupDetail.seed(
    {
      answer_detail: check_group,
      answer_choise: choises[Random.rand(choises.count)]
    },
    {
      answer_detail: check_group,
      answer_choise: choises[Random.rand(choises.count)]
    }
  )
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
      create_answer_text(question, answer)
    when 'check_group'
      create_answer_check_group(question, answer)
    when 'radio_group'
      create_answer_radio_group(question, answer)
    end
  end
end
