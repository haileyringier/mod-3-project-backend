class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|

      t.string :name
      t.string :house
      t.string :ancestry
      t.string :image
      t.timestamps
    end
  end
end
