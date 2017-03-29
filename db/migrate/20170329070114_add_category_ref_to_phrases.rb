class AddCategoryRefToPhrases < ActiveRecord::Migration[5.0]
  def change
    add_reference :phrases, :cathegory, foreign_key: true
  end
end
