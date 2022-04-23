class ChangeBlogDescToText < ActiveRecord::Migration[6.1]
  def change
    change_column :admin_blogs, :desc, :text
  end
end
