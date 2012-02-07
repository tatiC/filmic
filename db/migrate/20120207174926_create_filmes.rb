class CreateFilmes < ActiveRecord::Migration
  def change
    create_table :filmes do |t|
      t.string :name

      t.timestamps
    end
  end
end
