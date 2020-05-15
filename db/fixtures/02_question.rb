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
    name: 'ふるさと納税で選択した返礼品はなんですか?',
    answer_type: :check_group,
    condition: 1,
    description: 'ジャンルを選択(複数選択可)'
  },
  {
    id: 6,
    questionnaire: questionnaire,
    name: 'ふるさと納税制度を活用し、被災地へ寄付したことはありますか?',
    answer_type: :radio_group,
    condition: 1,
    description: 'はい or いいえ'
  },
  {
    id: 7,
    questionnaire: questionnaire,
    name: 'ふるさと納税についてどう思いますか?',
    answer_type: :text
  },
  {
    id: 8,
    questionnaire: questionnaire,
    name: 'ふるさと納税制度において、返礼品は必要だと思いますか?',
    answer_type: :radio_group,
    condition: 1,
    description: 'はい or いいえ'
  },
  {
    id: 9,
    questionnaire: questionnaire,
    name: 'ふるさと納税で希望する返礼品について教えて下さい',
    answer_type: :text
  },
  {
    id: 10,
    questionnaire: questionnaire,
    name: 'ふるさと納税について不明点や疑問点を教えて下さい',
    answer_type: :text
  },
)

AnswerChoise.seed(
  # 1. ふるさと納税の制度を知っていますか？
  {
    id: 1,
    question: Question.first,
    name: 'はい'
  },
  {
    id: 2,
    question: Question.first,
    name: 'いいえ'
  },
  # 2. 昨年度ふるさと納税を行いましたか？
  {
    id: 3,
    question: Question.second,
    name: 'はい'
  },
  {
    id: 4,
    question: Question.second,
    name: 'いいえ'
  },
  # 3. ふるさと納税で使用した金額を選んでください
  {
    id: 5,
    question: Question.third,
    name: '30,000円未満'
  },
  {
    id: 6,
    question: Question.third,
    name: '30,000円以上 50,000円未満'
  },
  {
    id: 7,
    question: Question.third,
    name: '50,000円以上 100,000円未満'
  },
  {
    id: 8,
    question: Question.third,
    name: '100,000円以上'
  },
  # 4. 家族構成を教えて下さい
  {
    id: 9,
    question: Question.fourth,
    name: '独身'
  },
  {
    id: 10,
    question: Question.fourth,
    name: '2人'
  },
  {
    id: 11,
    question: Question.fourth,
    name: '3人'
  },
  {
    id: 12,
    question: Question.fourth,
    name: '4人'
  },
  {
    id: 13,
    question: Question.fourth,
    name: '5人'
  },
  {
    id: 14,
    question: Question.fourth,
    name: '6人以上'
  },
  # ふるさと納税で選択した返礼品はなんですか?
  {
    id: 15,
    question: Question.fifth,
    name: '食料品'
  },
  {
    id: 16,
    question: Question.fifth,
    name: '電化製品'
  },
  {
    id: 17,
    question: Question.fifth,
    name: '旅行券・チケット'
  },
  {
    id: 18,
    question: Question.fifth,
    name: '美容'
  },
  {
    id: 19,
    question: Question.fifth,
    name: '雑貨・日用品'
  },
  {
    id: 20,
    question: Question.fifth,
    name: 'その他'
  },
  # ふるさと納税制度を活用し、被災地へ寄付したことはありますか
  {
    id: 21,
    question: Question.find(6),
    name: 'はい'
  },
  {
    id: 22,
    question: Question.find(6),
    name: 'いいえ'
  },
  # ふるさと納税制度において、返礼品は必要だと思いますか?
  {
    id: 23,
    question: Question.find(8),
    name: 'はい'
  },
  {
    id: 24,
    question: Question.find(8),
    name: 'いいえ'
  }
)
