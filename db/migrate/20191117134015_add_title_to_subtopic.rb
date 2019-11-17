class AddTitleToSubtopic < ActiveRecord::Migration[5.2]
  def change
    add_column :subtopics, :title, :string
  end
end
