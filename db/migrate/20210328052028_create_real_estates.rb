class CreateRealEstates < ActiveRecord::Migration[6.1]
  def change
    create_table :real_estates do |t|
      t.string :name
      t.string :type
      t.string :street
      t.string :external_number
      t.string :internal_number
      t.string :neighborhood
      t.string :string
      t.string :city
      t.string :country
      t.integer :rooms
      t.integer :bathrooms
      t.string :comments

      t.timestamps
    end
  end
end
