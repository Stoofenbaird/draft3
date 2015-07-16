class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.references :petname, index: true, foreign_key: true
      t.string :species
      t.string :common_name_or_breed_name

      t.timestamps null: false
    end
  end
end
