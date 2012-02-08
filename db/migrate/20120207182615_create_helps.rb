class CreateHelps < ActiveRecord::Migration
  def change
    create_table :helps do |t|
      t.string :tip
      t.references :film

      t.timestamps
    end
    add_index :helps, :film_id
  end
end
