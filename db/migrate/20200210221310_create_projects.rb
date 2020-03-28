class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :start_date
      t.string :end_date
      t.string :status, default: "propuesta"
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
