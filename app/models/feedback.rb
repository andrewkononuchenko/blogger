class Feedback < ActiveRecord::Base
  mount_uploader :commenter_picture, ImageUploader
end
