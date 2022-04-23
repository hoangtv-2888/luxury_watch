class CreateAdminBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_blogs do |t|
      t.string :title

      t.timestamps
    end
  end
end
