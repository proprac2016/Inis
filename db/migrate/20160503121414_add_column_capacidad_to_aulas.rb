class AddColumnCapacidadToAulas < ActiveRecord::Migration
  def change
    add_column :aulas, :capacidad, :integer
  end
end
