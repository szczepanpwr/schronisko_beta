class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.integer :identyfikator
      t.text :enjoys

      t.timestamps
    end
  end
end
