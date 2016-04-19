class Job < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
    
    mount_uploader :company_logo, CompanyLogoUploader
    belongs_to :user
    geocoded_by :address   # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates
    validates_presence_of :title, :description, :long_description, :category, :address, :how_to_apply, :company_name, :website, :email, :experience, :working_hours, :compensation
end
