class AddDescriptionToTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :descriptionL, :string
  end
end
