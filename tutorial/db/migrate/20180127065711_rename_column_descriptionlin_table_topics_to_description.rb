class RenameColumnDescriptionlinTableTopicsToDescription < ActiveRecord::Migration[5.1]
  def change
    rename_column :topics, :descriptionL, :description
  end
end
