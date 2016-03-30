class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :address
      t.text :how_to_apply
      t.string :company_name
      t.string :website
      t.string :email
      t.string :experience
      t.string :working_hours
      t.string :compensation

      t.timestamps null: false
    end
  end
end
