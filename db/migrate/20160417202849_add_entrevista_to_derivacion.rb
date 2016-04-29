class AddEntrevistaToDerivacion < ActiveRecord::Migration
  def change
    add_reference :derivacions, :entrevista, index: true, foreign_key: true
  end
end
