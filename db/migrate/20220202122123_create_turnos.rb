class CreateTurnos < ActiveRecord::Migration[6.1]
  def change
    create_table :turnos do |t|

      t.timestamps
    end
  end
end
