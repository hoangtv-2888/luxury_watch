class AddDescToBlog < ActiveRecord::Migration[6.1]
  def change
    add_column :admin_blogs, :desc, :string
  end
end
