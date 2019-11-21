class AddAnimalToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :animal, foreign_key: true
  end
end
