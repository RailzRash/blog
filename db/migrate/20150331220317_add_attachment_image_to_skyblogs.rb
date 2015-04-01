class AddAttachmentImageToSkyblogs < ActiveRecord::Migration
  def self.up
    change_table :skyblogs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :skyblogs, :image
  end
end
