class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :appearance_rating
      t.integer :economics_rating
      t.integer :social_rating
      t.integer :warmongering_rating
      t.integer :charisma_rating
      t.integer :user_id
      t.integer :tyrant_id

      t.timestamps
    end
  end
end
