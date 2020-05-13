class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :questionnaire, null: false, foreign_key: true
      t.integer :answer_type
      t.integer :condition
      t.string :name, limit: 100
      t.string :description, limit: 255

      t.timestamps
    end
  end
end
