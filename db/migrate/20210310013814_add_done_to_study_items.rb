class AddDoneToStudyItems < ActiveRecord::Migration[6.1]
  def change
    add_column :study_items, :done, :boolean
  end
end
