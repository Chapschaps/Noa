class AddAvailableToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :available, :boolean, default: true
  end
end
