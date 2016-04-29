class AddHorarioToEntrevista < ActiveRecord::Migration
  def change
    add_reference :entrevista, :horario, index: true, foreign_key: true
  end
end
