class CreateDiagnosticos < ActiveRecord::Migration[6.1]
  def change
    create_table :diagnosticos do |t|
      t.string :titulo
      t.string :descripcion
      t.timestamps
    end
  end
end
