class CreateAnswerSelects < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_selects do |t|
      t.references :answer, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.references :answer_choise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
