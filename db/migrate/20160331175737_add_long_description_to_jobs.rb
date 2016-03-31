class AddLongDescriptionToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :long_description, :text
  end
end
