class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :rank
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.references :subcategory, foreign_key: true

      t.timestamps
    end
  end
end
