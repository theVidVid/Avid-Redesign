class Designer < ApplicationRecord
    mount_uploaders :pictures, PictureUploader
    mount_uploader :profile_pic, PictureUploader
    mount_uploader :design_image, PictureUploader
    has_many :clients

    def self.search(search)
        where("first_name ILIKE ? OR last_name ILIKE ? OR company_name ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end
end
