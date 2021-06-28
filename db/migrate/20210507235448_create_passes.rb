class CreatePasses < ActiveRecord::Migration[6.1]
  def change
    create_table :passes do |t|
      t.string :title
      t.text :description
      t.integer :distance
      t.integer :hm
      t.boolean :wishlist
      t.boolean :done

      t.timestamps
    end
  end
end
