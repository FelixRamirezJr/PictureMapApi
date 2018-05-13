class Image < ApplicationRecord
  belongs_to :location
  mount_uploader :file, ImageUploader
end
