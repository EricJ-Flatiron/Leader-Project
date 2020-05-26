class CreateTyrants < ActiveRecord::Migration[6.0]
  def change
    create_table :tyrants do |t|
      t.string :name
      t.string :bio
      t.string :eonomics_policy
      t.string :social_policy
      t.string :warmongering_policy

      t.timestamps
    end
  end
end
