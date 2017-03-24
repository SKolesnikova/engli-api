class CreatePhrases < ActiveRecord::Migration[5.0]
  def change
    create_table :phrases do |t|
      t.string :title
      t.string :translate

      t.timestamps
    end
  end
end
