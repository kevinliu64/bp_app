class RemoveTopicandReadFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :topic, :reference
    remove_column :comments, :read, :boolean
  end
end
