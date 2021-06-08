class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      # t.references :user, null: false, foreign_key: true
      # t.references :community, null: false, foreign_key: true
      t.integer :user_id
      t.timestamps
    end
  end
end
