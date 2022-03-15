class CreateStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :studies do |t|
      t.references :user, null: false, foreign_key: true

      t.integer :first_time
      t.integer :second_time
      t.timestamps
    end
  end
end
