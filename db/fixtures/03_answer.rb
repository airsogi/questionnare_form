questionnaire = Questionnaire.first

User.all.each do |user|
  answers = Answer.seed(
    questionnaire: questionnaire,
    user: user
  )

  # AnswerDetail.seed(
  #   {
  #     question: Question.first,
  #     answer: answers.first,
  #     answer_choise:
  #   }
  # )
end
