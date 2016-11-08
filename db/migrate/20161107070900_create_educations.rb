class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.belongs_to :basic_profile , index: true
      t.string :qualification
      t.string :institution
      t.date :start_year
      t.date :end_year
      t.integer :percentage

      t.timestamps null: false
    end
  end
end
