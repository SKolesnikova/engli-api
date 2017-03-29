class AddPhraseRefToExamples < ActiveRecord::Migration[5.0]
  def change
    add_reference :examples, :phrase, foreign_key: true
  end
end
