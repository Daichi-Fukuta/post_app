class CreateBestAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :best_answers do |t|
      t.references :answer, foreign_key: true, null: false
      t.references :post, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
