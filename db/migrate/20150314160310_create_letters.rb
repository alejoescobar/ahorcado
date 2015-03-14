class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :letter
      t.references :secret_word, index: true

      t.timestamps null: false
    end
    add_foreign_key :letters, :secret_words
  end
end
