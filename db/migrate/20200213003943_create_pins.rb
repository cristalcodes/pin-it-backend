class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.string :name
      t.string :label
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
