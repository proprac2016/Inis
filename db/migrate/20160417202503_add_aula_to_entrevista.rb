class AddAulaToEntrevista < ActiveRecord::Migration
  def change
    add_reference :entrevista, :aula, index: true, foreign_key: true
  end
end
