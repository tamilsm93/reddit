class AddIndexToRelationships < ActiveRecord::Migration[6.1]
  def change
    add_index :relationships, :followed_id
    add_index :relationships, :follower_id
    add_index :relationships, [:followed_id, :follower_id], unique: :true
    #Ex:- add_index("admin_users", "username")
    #Ex:- add_index("admin_users", "username")
    #Ex:- add_index("admin_users", "username")
  end
end
