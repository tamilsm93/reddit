class CreateCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :codes do |t|
      t.text :usercode

      t.timestamps
    end
  end
end
