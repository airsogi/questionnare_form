Questionnaire.seed(
  {
    id: 1,
    name: 'ふるさと納税アンケート'
  }
)

questionnaire = Questionnaire.first

Question.seed(
  {
    id: 1,
    questionnaire: questionnaire,
    name: 'ふるさと納税の制度を知っていますか？',
    answer_type: :radio_group,
    condition: 1,
    description: 'はい or いいえ'
  },
  {
    id: 2,
    questionnaire: questionnaire,
    name: '昨年度ふるさと納税を行いましたか？',
    answer_type: :radio_group,
    condition: 1,
    description: 'はい or いいえ'
  },
  {
    id: 3,
    questionnaire: questionnaire,
    name: 'ふるさと納税で使用した金額を選んでください',
    answer_type: :radio_group,
    condition: 1,
    description: '30,000円未満 ~ 100,000円以上の間で選択'
  },
  {
    id: 4,
    questionnaire: questionnaire,
    name: '家族構成を教えて下さい',
    answer_type: :radio_group,
    condition: 1,
    description: '1人~6人以上の間で選択'
  },
  {
    id: 5,
    questionnaire: questionnaire,
    name: 'ふるさと納税についてどう思いますか?',
    answer_type: :long_text
  },
  {
    id: 6,
    questionnaire: questionnaire,
    name: 'ふるさと納税についてどう思いますか?',
    answer_type: :long_text
  },
  {
    id: 7,
    questionnaire: questionnaire,
    name: 'ふるさと納税についてどう思いますか?',
    answer_type: :long_text
  },
  {
    id: 8,
    questionnaire: questionnaire,
    name: 'ふるさと納税についてどう思いますか?',
    answer_type: :long_text
  },
  {
    id: 9,
    questionnaire: questionnaire,
    name: 'ふるさと納税についてどう思いますか?',
    answer_type: :long_text
  },
  {
    id: 10,
    questionnaire: questionnaire,
    name: 'ふるさと納税について不明点や疑問点を教えて下さい',
    answer_type: :long_text
  },
)

AnswerChoise.seed(
  # 1. ふるさと納税の制度を知っていますか？
  {
    question: Question.first,
    name: 'はい'
  },
  {
    question: Question.first,
    name: 'いいえ'
  },
  # 2. 昨年度ふるさと納税を行いましたか？
  {
    question: Question.second,
    name: 'はい'
  },
  {
    question: Question.second,
    name: 'いいえ'
  },
  # 3. ふるさと納税で使用した金額を選んでください
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
  },
  # 4. 家族構成を教えて下さい
  {
    question: Question.fourth,
    name: '独身'
  },
  {
    question: Question.fourth,
    name: '2人'
  },
  {
    question: Question.fourth,
    name: '3人'
  },
  {
    question: Question.fourth,
    name: '4人'
  },
  {
    question: Question.fourth,
    name: '5人'
  },
  {
    question: Question.fourth,
    name: '6人以上'
  },
)
