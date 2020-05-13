class CreateAnswerTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_texts do |t|
      t.references :answer, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.string :text

      t.timestamps
    end
  end
end
