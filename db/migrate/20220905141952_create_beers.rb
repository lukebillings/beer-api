class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.integer :identifier
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
