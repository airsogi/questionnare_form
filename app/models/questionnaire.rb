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
require 'benchmark'

class Questionnaire < ApplicationRecord
  has_many :questions
  has_many :answers
  has_many :answer_denormalizes

  def self.benchmark
    log_level = Rails.logger.level
    Rails.logger.level = :info

    questionnaire = self.first

    Benchmark.bm 20 do |r|
      r.report "export!" do
        questionnaire.export!
      end
      r.report "export_denormalize!" do
        questionnaire.export_denormalize!
      end
    end

    Rails.logger.level = log_level
  end

  def export!
    csv_export("questionnaire_#{id}.csv") do |csv|
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
    csv_export("questionnaire_#{id}_denormalize.csv") do |csv|
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

  def csv_export filename
    CSV.open(filename, 'w', encoding: 'sjis') do |csv|
      yield(csv)
    end
  end
end
