class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :location
      t.string :meal_date
      t.string :recommended_category
      t.string :recommended_restaurant
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
