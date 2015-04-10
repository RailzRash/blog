class Skyblog < ActiveRecord::Base
  has_many :comments, as: :commentable
  has_attached_file :image, styles: { medium: "600x300#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end