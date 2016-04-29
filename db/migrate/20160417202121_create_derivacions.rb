class CreateDerivacions < ActiveRecord::Migration
  def change
    create_table :derivacions do |t|
      t.string :observaciones

      t.timestamps null: false
    end
  end
end
