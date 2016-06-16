class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.text :name
      # this is what we passed in --- rails generate Animal name:text

      t.timestamps null: false
    end
  end
end
