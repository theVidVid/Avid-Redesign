class Designer < ApplicationRecord
    mount_uploader :profile_pic, :design_image PictureUploader
    end
end
