class AddDescriptionToSkyblogs < ActiveRecord::Migration
  def change
    add_column :skyblogs, :description, :text
  end
end
