class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :size
      t.string :specie
      t.string :location
      t.string :sexe
      t.string :risk_factor
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
