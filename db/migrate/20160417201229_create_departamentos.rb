class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
