class AddIndexToComments < ActiveRecord::Migration[6.1]
  def change
    add_index :comments, [:community_id, :title, :description]
    #Ex:- add_index("admin_users", "username")
  end
end
