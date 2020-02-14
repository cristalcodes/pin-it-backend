class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.date :date
      t.text :description
      t.references :pin, foreign_key: true

      t.timestamps
    end
  end
end
