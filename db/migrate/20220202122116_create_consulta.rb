class CreateConsulta < ActiveRecord::Migration[6.1]
  def change
    create_table :consulta do |t|

      t.timestamps
    end
  end
end
