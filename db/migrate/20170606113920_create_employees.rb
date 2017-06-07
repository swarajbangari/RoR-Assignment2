class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.date :date_of_joining
      t.string :designation
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
