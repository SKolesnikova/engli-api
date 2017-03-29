class AddUserRefToExamples < ActiveRecord::Migration[5.0]
  def change
    add_reference :examples, :user, foreign_key: true
  end
end
