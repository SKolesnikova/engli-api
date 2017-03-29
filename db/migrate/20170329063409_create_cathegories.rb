class CreateCathegories < ActiveRecord::Migration[5.0]
  def change
    create_table :cathegories do |t|
      t.string :name

      t.timestamps
    end
  end
end
