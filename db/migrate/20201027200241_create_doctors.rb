class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.integer :years_of_experience
      t.string :image
      t.string :practice 

      t.timestamps
    end
  end
end
