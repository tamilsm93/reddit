class AddIndexToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_index :communities, :name
  end
end
