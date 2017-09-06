class RenameFielfInRecept < ActiveRecord::Migration[5.1]
  def change
    rename_column :recepts, :id_name_form, :form_param
    rename_column :recepts, :find_field_name, :name_input_field
  end
end
