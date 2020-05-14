class CreateAnswerCheckGroupDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_check_group_details do |t|
      t.references :answer_detail, null: false, foreign_key: true
      t.references :answer_choise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
