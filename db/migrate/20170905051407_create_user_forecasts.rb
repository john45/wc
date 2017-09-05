class CreateUserForecasts < ActiveRecord::Migration[5.1]
  def change
    create_table :user_forecasts do |t|
      t.references :user, foreign_key: true
      t.references :recept, foreign_key: true

      t.timestamps
    end
  end
end
