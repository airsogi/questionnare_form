user_count = User.count
divisor = user_count/100 #20000

ids = AnswerCheckGroup.ids.each_slice(divisor).to_a
ids.each_with_index do |array, i|
  p "slice #{i} start -----------"

  answer_check_group_details = array.map do |id|
    [
      {
        answer_detail_id: id,
        answer_choise_id: 15,
        created_at: Time.current,
        updated_at: Time.current
      },
      {
        answer_detail_id: id,
        answer_choise_id: 17,
        created_at: Time.current,
        updated_at: Time.current
      }
    ]
  end.flatten

  p AnswerCheckGroupDetail.insert_all! answer_check_group_details
end
