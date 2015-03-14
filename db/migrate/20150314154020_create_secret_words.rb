class CreateSecretWords < ActiveRecord::Migration
  def change
    create_table :secret_words do |t|
      t.string :word

      t.timestamps null: false
    end
  end
end
