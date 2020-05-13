# == Schema Information
#
# Table name: questionnaires
#
#  id         :integer          not null, primary key
#  name       :string(30)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'csv'

class Questionnaire < ApplicationRecord
  has_many :questions
  has_many :answers
  has_many :answer_denormalizes

  def export!
    CSV.open("questionnaire_#{id}.csv",'w', encoding: 'sjis') do |csv|
      question_names = questions.sort_by{|q| q.id }.map(&:name)
      csv << %w[お名前 住所 Eメール 電話番号 郵便番号].concat(question_names)

      answers.each do |answer|
        user = answer.user
        out = []
        out << user.name
        out << user.address
        out << user.email
        out << user.phone
        out << user.zip_code
        answer.details.each do |detail|
          out << detail.answer
        end

        csv << out
      end
    end
  end

  def export_denormalize!
    CSV.open("questionnaire_#{id}_denormalize.csv",'w', encoding: 'sjis') do |csv|
      question_names = questions.sort_by{|q| q.id }.map(&:name)
      csv << %w[お名前 住所 Eメール 電話番号 郵便番号 回答]

      answer_denormalizes.each do |answer|
        user = answer.user
        out = []
        out << user.name
        out << user.address
        out << user.email
        out << user.phone
        out << user.zip_code
        out << answer.description

        csv << out
      end
    end
  end
end
