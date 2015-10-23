class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.string :key
      t.string :spec

      t.timestamps null: false
    end
  end
end
