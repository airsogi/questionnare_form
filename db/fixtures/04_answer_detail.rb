user_count = User.count
divisor = user_count/100 #20000

arrays = Answer.ids.each_slice(divisor).to_a
arrays.each_with_index do |array, i|
  p "slice #{i} start -----------"

  answer_details = array.map do |i|
    [
      {
        question_id: 1,
        answer_id: i,
        type: 'AnswerRadioGroup',
        text: nil,
        answer_choise_id: 1,
        created_at: Time.current,
        updated_at: Time.current
      },
      {
        question_id: 2,
        answer_id: i,
        type: 'AnswerRadioGroup', # radio_group
        text: nil,
        answer_choise_id: 2,
        created_at: Time.current,
        updated_at: Time.current
      },
      {
        question_id: 3,
        answer_id: i,
        type: 'AnswerRadioGroup', # radio_group
        text: nil,
        answer_choise_id: 6,
        created_at: Time.current,
        updated_at: Time.current
      },
      {
        question_id: 4,
        answer_id: i,
        type: 'AnswerRadioGroup', # radio_group
        text: nil,
        answer_choise_id: 11,
        created_at: Time.current,
        updated_at: Time.current
      },
      {
        question_id: 5,
        answer_id: i,
        type: 'AnswerCheckGroup', # check_group
        text: nil,
        answer_choise_id: nil,
        created_at: Time.current,
        updated_at: Time.current
      },
      {
        question_id: 6,
        answer_id: i,
        type: 'AnswerRadioGroup', # radio_group
        text: nil,
        answer_choise_id: 21,
        created_at: Time.current,
        updated_at: Time.current
      },
      {
        question_id: 7,
        answer_id: i,
        type: 'AnswerText', # text
        text: '地域に貢献できてとても良いと思います',
        answer_choise_id: 1,
        created_at: Time.current,
        updated_at: Time.current
      },
      {
        question_id: 8,
        answer_id: i,
        type: 'AnswerRadioGroup', # radio_group
        text: nil,
        answer_choise_id: 23,
        created_at: Time.current,
        updated_at: Time.current
      },
      {
        question_id: 9,
        answer_id: i,
        type: 'AnswerText', # text
        text: '特になし',
        answer_choise_id: nil,
        created_at: Time.current,
        updated_at: Time.current
      },
      {
        question_id: 10,
        answer_id: i,
        type: 'AnswerText', # text
        text: '特になし',
        answer_choise_id: nil,
        created_at: Time.current,
        updated_at: Time.current
      },
    ]
  end.flatten

  answer_details.each_slice(user_count/50) do |block|
    p AnswerDetail.insert_all! block
  end
end
