class AddUserIdToSavepost < ActiveRecord::Migration[6.1]
  def change
    add_reference :save_posts, :user, foreign_key: true
  end
end
