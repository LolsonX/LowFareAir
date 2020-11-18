class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.string :country
      t.string :airport
      t.string :language
      t.string :country_iso_code

    end
  end
end
