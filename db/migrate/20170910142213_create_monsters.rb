class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :special
      t.integer :level, default: 1
      t.references :tribe, foreign_key: true

      t.timestamps
    end
  end
end
