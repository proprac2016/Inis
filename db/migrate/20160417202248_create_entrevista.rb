class CreateEntrevista < ActiveRecord::Migration
  def change
    create_table :entrevista do |t|
      t.boolean :asistencia
      t.boolean :tipo

      t.timestamps null: false
    end
  end
end
