class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :basic_profile , index: true
      t.string :person
      t.string :street_name 
      t.string :city_name
      t.string :country
      t.integer :pin
      t.integer :phone , limit: 10
      
      t.timestamps null: false
    end
  end
end
