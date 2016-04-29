class AddDepartamentoToDerivacion < ActiveRecord::Migration
  def change
    add_reference :derivacions, :departamento, index: true, foreign_key: true
  end
end
