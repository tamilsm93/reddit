class CreateNetworks < ActiveRecord::Migration[6.1]
  def change
    create_table :networks do |t|
      t.text :title
      t.text :tagline
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
