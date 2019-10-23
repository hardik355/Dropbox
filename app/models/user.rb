class User < ApplicationRecord
  has_attached_file :image,
  :storage => :dropbox,
  :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
  :dropbox_options => {:path => proc { |style| "files/#{id}/#{file.original_filename}" } }
  
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end





