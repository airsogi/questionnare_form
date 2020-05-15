questionnaire = Questionnaire.first

user_count = User.count
answers = (1..user_count).map do |i|
  {
    user_id: i,
    questionnaire_id: questionnaire.id,
    created_at: Time.current,
    updated_at: Time.current
  }
end

answers.each_slice(user_count/100) do |block|
  p Answer.insert_all block
end
