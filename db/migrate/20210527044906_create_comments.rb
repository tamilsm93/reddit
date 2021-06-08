class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :title
      t.text :description
      t.references :community, null: false, foreign_key: true

      t.timestamps
    end
    add_index :comments, :id
  end
end
