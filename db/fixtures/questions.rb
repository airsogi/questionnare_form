Questionnaire.seed({
    id: 1,
    name: 'ふるさと納税アンケート'
  }
)

Question.seed(
  {
    id: 1,
    questionnaire: Questionnaire.first,
    name: 'ふるさと納税の制度を知っていますか？',
    answer_type: 1,
    condition: 1,
    description: 'はい or いいえ'
  },
  {
    id: 2,
    questionnaire: Questionnaire.first,
    name: '昨年度ふるさと納税を行いましたか？',
    answer_type: 1,
    condition: 1,
    description: 'はい or いいえ'
  },
  {
    id: 3,
    questionnaire: Questionnaire.first,
    name: 'ふるさと納税で使用した金額を選んでください',
    answer_type: 2,
    condition: 1,
    description: '30,000円未満 ~ 100,000円以上の間で選択'
  },
)

AnswerChoise.seed(
  {
    question: Question.first,
    name: 'はい'
  },
  {
    question: Question.first,
    name: 'いいえ'
  },
  {
    question: Question.second,
    name: 'はい'
  },
  {
    question: Question.second,
    name: 'いいえ'
  },
  {
    question: Question.third,
    name: '30,000円未満'
  },
  {
    question: Question.third,
    name: '30,000円以上 50,000円未満'
  },
  {
    question: Question.third,
    name: '50,000円以上 100,000円未満'
  },
  {
    question: Question.third,
    name: '100,000円以上'
  }
)
