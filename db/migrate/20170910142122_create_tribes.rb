class CreateTribes < ActiveRecord::Migration[5.1]
  def change
    create_table :tribes do |t|
      t.string :name
      t.integer :str, default: 0
      t.integer :mov, default: 0
      t.integer :dex, default: 0
      t.integer :con, default: 0

      t.timestamps
    end
  end
end
