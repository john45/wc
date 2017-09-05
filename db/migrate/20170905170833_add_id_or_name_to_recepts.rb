class AddIdOrNameToRecepts < ActiveRecord::Migration[5.1]
  def change
    add_column :recepts, :id_or_name, :string
    change_column :recepts, :current, :string
    change_column :recepts, :max, :string
    change_column :recepts, :min, :string
    change_column :recepts, :probability, :string
  end
end
