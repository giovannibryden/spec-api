class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.string :key
      t.text :spec

      t.timestamps null: false
    end
  end
end
