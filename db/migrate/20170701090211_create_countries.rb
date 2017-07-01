class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :flag_url
      t.string :language
      t.integer :population

      t.timestamps
    end
  end
end
