class CreatePokemonlists < ActiveRecord::Migration
  def change
    create_table :pokemonlists do |t|
      t.integer :no
      t.string :name
      t.string :typea
      t.string :typeb

      t.timestamps
    end
  end
end
