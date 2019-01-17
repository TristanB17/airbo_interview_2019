class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.references :genre, index: true, foreign_key: true

      t.timestamps
    end
  end
end
