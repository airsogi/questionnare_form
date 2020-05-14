class CreateAnswerDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_details do |t|
      t.string :type, null: false
      t.references :question, null: false, foreign_key: true
      t.references :answer, null: false, foreign_key: true
      t.string :text
      t.references :answer_choise, null: true

      t.timestamps
    end
  end
end
