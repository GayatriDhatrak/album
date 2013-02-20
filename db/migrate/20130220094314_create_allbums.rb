class CreateAllbums < ActiveRecord::Migration
  def change
    create_table :allbums do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
