class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.text :quote
      t.text :body

      t.timestamps
    end
  end
end
