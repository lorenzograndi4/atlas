class CreateContinents < ActiveRecord::Migration[5.1]
  def change
    create_table :continents do |t|
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
