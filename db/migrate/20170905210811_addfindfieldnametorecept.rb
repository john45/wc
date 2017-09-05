class Addfindfieldnametorecept < ActiveRecord::Migration[5.1]
  def change
    add_column :recepts, :find_field_name, :string
  end
end
