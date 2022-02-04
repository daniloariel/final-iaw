class CreateMedicos < ActiveRecord::Migration[6.1]
  def change
    create_table :medicos do |t|
      t.integer :matricula
      t.string :nombre
      t.string :email
      t.timestamps
    end
  end
end
