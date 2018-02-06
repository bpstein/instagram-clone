<<<<<<< HEAD
class Post < ApplicationRecord
  has_attached_file :image, styles: { :medium => "640x" }
  validates :image, presence: true
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
=======
class Post < ActiveRecord::Base  
  
  validates :image, presence: true
  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end  
>>>>>>> 2905e72d927fd41518bb7ba52e3d68bf1ffabf98
