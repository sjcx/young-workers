class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.text :job
      t.text :demographic
      t.string :location

      t.timestamps
    end
  end
end
