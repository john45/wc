class CreateRecepts < ActiveRecord::Migration[5.1]
  def change
    create_table :recepts do |t|
      t.string :link
      t.string :id_name_form
      t.integer :current
      t.integer :max
      t.integer :min
      t.integer :probability

      t.timestamps
    end
  end
end
