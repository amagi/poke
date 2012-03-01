class CreateButtlelists < ActiveRecord::Migration
  def change
    create_table :buttlelists do |t|
      t.string :nickname
      t.string :skilla
      t.string :skillb
      t.string :skillc
      t.string :skilld
      t.integer :pokemon_id
      t.string :personality

      t.timestamps
    end
  end
end
