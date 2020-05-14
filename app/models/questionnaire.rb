# == Schema Information
#
# Table name: questionnaires
#
#  id         :bigint           not null, primary key
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
    csv_benchmark('export!', "questionnaire_#{id}.csv") do |csv|
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
          out << detail.response
        end

        csv << out
      end
    end
  end

  def export_denormalize!
    csv_benchmark('export_denormalize!', "questionnaire_#{id}_denormalize.csv") do |csv|
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

  private

  def csv_benchmark target, filename
    ActiveRecord::Base.benchmark(target) do
      CSV.open(filename, 'w', encoding: 'sjis') do |csv|
        yield(csv)
      end
    end
  end
end
