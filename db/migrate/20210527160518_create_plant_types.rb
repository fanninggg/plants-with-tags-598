class CreatePlantTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :plant_types do |t|
      t.references :plant, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
