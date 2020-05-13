class CreateAnswerDenormalizes < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_denormalizes do |t|
      t.references :questionnaire, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
