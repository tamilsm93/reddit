class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :description
      t.text :tags
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
    add_index :answers, :id
  end
end
