class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.belongs_to :basic_profile , index: true
      t.string :company
      t.string :postion
      t.date :from_year
      t.date :to_year
      

      t.timestamps null: false
    end
  end
end
