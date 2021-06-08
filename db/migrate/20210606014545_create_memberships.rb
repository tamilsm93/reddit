class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :community_id

      t.timestamps
    end
  end
end
