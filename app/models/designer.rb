class Designer < ApplicationRecord
    mount_uploader :profile_pic, PictureUploader
    mount_uploader :design_image, PictureUploader
end
