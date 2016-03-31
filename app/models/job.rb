class Job < ActiveRecord::Base
    belongs_to :user
    validates_presence_of :title, :description, :long_description, :category, :address, :how_to_apply, :company_name, :website, :email, :experience, :working_hours, :compensation
end
