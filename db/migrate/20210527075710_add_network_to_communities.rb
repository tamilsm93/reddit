class AddNetworkToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_reference :communities, :network, foreign_key: true
  end
end
