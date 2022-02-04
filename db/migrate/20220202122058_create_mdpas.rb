class CreateMdpas < ActiveRecord::Migration[6.1]
  def change
    create_table :mdpas do |t|
      t.float :value
      t.timestamps
    end
  end
end
