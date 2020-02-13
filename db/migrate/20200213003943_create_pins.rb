class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.string :address
      t.string :label
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
