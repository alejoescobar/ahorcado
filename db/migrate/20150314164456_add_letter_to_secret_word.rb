class AddLetterToSecretWord < ActiveRecord::Migration
  def change
    add_column :secret_words, :letter, :string
  end
end
