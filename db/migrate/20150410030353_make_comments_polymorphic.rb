class MakeCommentsPolymorphic < ActiveRecord::Migration
  def up
  	remove_column :comments, :name
  	add_column :comments, :commentable_id, :integer
  	add_column :comments, :commentable_type, :string
  	add_index :comments, [:commentable_id, :commentable_type]
  end

  def down 
  	remove_index :comments, column: [:commentable_id, :commentable_type]
  	remove_column :comments, :commentable_type
  	remove_column :comments, :commentable_id
  	add_column :comments, :name, :string
  end
end
