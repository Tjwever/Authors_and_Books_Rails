class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :genre
      t.integer :pages
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
