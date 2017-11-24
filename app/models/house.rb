class House < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
