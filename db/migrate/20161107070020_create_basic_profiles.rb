class CreateBasicProfiles < ActiveRecord::Migration
  def change
    create_table :basic_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :sex
      t.string :father_name
      t.string :mother_name

      t.timestamps null: false
    end
  end
end
