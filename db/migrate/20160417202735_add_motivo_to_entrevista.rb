class AddMotivoToEntrevista < ActiveRecord::Migration
  def change
    add_reference :entrevista, :motivo, index: true, foreign_key: true
  end
end
