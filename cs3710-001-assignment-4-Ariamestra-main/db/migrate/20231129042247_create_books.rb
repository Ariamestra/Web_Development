class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.references :person, null: false, foreign_key: true
      t.string :isbn

      t.timestamps
    end
  end
end
