class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.time :hora_inicio
      t.time :hora_fin
      t.date :dia

      t.timestamps null: false
    end
  end
end
