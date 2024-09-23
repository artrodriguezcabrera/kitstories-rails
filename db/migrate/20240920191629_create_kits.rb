class CreateKits < ActiveRecord::Migration[7.1]
  def change
    create_table :kits do |t|
      t.string :year
      t.references :team, null: false, foreign_key: true
      t.string :kit
      t.string :brand
      t.text :design_notes
      t.string :full_kit
      t.string :league_finish
      t.string :wins
      t.string :draws
      t.string :losses
      t.string :total_points
      t.string :manager
      t.string :honors

      t.timestamps
    end
  end
end
