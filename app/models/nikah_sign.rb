class NikahSign < ApplicationRecord
  belongs_to :nikah_entry
  mount_uploader :sign_image, AvatarUploader
end
