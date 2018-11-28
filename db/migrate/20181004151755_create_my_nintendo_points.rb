class CreateMyNintendoPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :my_nintendo_points do |t|
      t.string :username
      t.string :country
      t.integer :gpoints
      t.integer :spoints

      t.timestamps
    end
  end
end
