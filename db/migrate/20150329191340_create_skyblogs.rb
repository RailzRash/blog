class CreateSkyblogs < ActiveRecord::Migration
  def change
    create_table :skyblogs do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
