class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :post, null: false, foreign_key: false
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
